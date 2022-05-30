package mta.ltnc.BookStore.controller.admin;

import mta.ltnc.BookStore.entity.Order;
import mta.ltnc.BookStore.entity.StatusOrder;
import mta.ltnc.BookStore.entity.User;
import mta.ltnc.BookStore.entity.UserGroup;
import mta.ltnc.BookStore.repositories.BookRepository;
import mta.ltnc.BookStore.repositories.OrderRepository;
import mta.ltnc.BookStore.repositories.StatusOrderRepository;
import mta.ltnc.BookStore.service.admin.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.IntStream;


@Controller
public class AdminOrderController {
    @Autowired
    private AdminOrderService orderService;

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private StatusOrderRepository statusOrderRepository;

    @RequestMapping(value = "/admin/order", method = RequestMethod.GET)
    public ModelAndView listAllOrder(
            Model model,
            @RequestParam("page") Optional<Integer> page,
            @RequestParam("size") Optional<Integer> size) {
        int currentPage = page.orElse(1);
        int pageSize = size.orElse(3);

        Page<Order> data = orderService.findPaginated(PageRequest.of(currentPage - 1, pageSize));
//        Page<Order> data = orderService.findPaginatedByCreateDate(PageRequest.of(currentPage - 1, pageSize), start_time, end_time);
        ModelAndView modelAndView = new ModelAndView("admin/order/index");
        modelAndView.addObject("page", data);


        int totalPages = data.getTotalPages();
        if (totalPages > 0) {
            List<Integer> pageNumbers = IntStream.rangeClosed(1, totalPages)
                    .boxed()
                    .collect(Collectors.toList());
            modelAndView.addObject("pageNumbers", pageNumbers);
        }
        return modelAndView;
    }

    @RequestMapping(value = "/admin/order", method = RequestMethod.POST)
    public ModelAndView getAllOrder(
            @RequestParam("page") int page,  @RequestParam("size") int size) {
        int currentPage = page  ;
        int pageSize = size ;

        Page<Order> data = orderService.findPaginated(PageRequest.of(currentPage - 1, pageSize));
        ModelAndView modelAndView = new ModelAndView("admin/order/index::data_table");
        modelAndView.addObject("page", data);


        int totalPages = data.getTotalPages();
        if (totalPages > 0) {
            List<Integer> pageNumbers = IntStream.rangeClosed(1, totalPages)
                    .boxed()
                    .collect(Collectors.toList());
            modelAndView.addObject("pageNumbers", pageNumbers);
        }
        return modelAndView;
    }
    @RequestMapping(value = "/admin/order/edit", method = RequestMethod.GET)
    public ModelAndView orderDetail(
            @RequestParam("id") Long id
    ){
        Long order_id = id;
        Order order = orderRepository.findById(order_id).get();
        List<StatusOrder> statusOrders = statusOrderRepository.findAll();
        ModelAndView modelAndView = new ModelAndView("admin/order/edit");
        modelAndView.addObject("order",order);
        modelAndView.addObject("statusOrders",statusOrders);
        return modelAndView;
    }
    @Modifying
    @RequestMapping(value="/admin/order/updateOrder", method = RequestMethod.POST)
    public String updateUser(@Valid Order order, BindingResult result) {
        if (result.hasErrors()) {
            System.out.println(result.getFieldErrors());
            System.out.println("error");
            return "redirect:/admin/order/edit?id=" + order.getId();
        }
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        order.setCreatedDate(timestamp);
        order.setShippedDate(timestamp);
        orderRepository.save(order);
        return "redirect:/admin/order";
    }

    @RequestMapping(value = "/admin/order/search", method = RequestMethod.GET)
    public ModelAndView searchUser( @RequestParam("term") Long term ) {
        int currentPage = 1;
        int pageSize = 5;
        Page<Order> orderPage = orderService.search(PageRequest.of(currentPage - 1, pageSize),term);
        ModelAndView modelAndView = new ModelAndView("admin/order/index");
        modelAndView.addObject("page", orderPage);
        int totalPages = orderPage.getTotalPages();
        if (totalPages > 0) {
            List<Integer> pageNumbers = IntStream.rangeClosed(1, totalPages)
                    .boxed()
                    .collect(Collectors.toList());
            modelAndView.addObject("pageNumbers", pageNumbers);
        }
        return modelAndView;
    }

}
