package mta.ltnc.BookStore.controller.admin;

import mta.ltnc.BookStore.dto.client.CartItemDto;
import mta.ltnc.BookStore.entity.User;
import mta.ltnc.BookStore.entity.UserGroup;
import mta.ltnc.BookStore.repositories.CartItemRepository;
import mta.ltnc.BookStore.repositories.UserRepository;
import mta.ltnc.BookStore.service.admin.AdminUserGroupService;
import mta.ltnc.BookStore.service.admin.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.sql.Timestamp;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;


@Controller
public class AdminUserController {
    @Autowired
    private AdminUserService userService;

    @Autowired
    private AdminUserGroupService userGroupService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CartItemRepository cartRepository;

    @RequestMapping(value = "/admin/user", method = RequestMethod.GET)
    public ModelAndView listCategory(
    ) {
        int currentPage = 1;
        int pageSize = 5;
        Page<User> bookCategoryPage =userService.findPaginated(PageRequest.of(currentPage - 1, pageSize));
        ModelAndView modelAndView = new ModelAndView("admin/user/index");
        modelAndView.addObject("page", bookCategoryPage);
        int totalPages = bookCategoryPage.getTotalPages();
        if (totalPages > 0) {
            List<Integer> pageNumbers = IntStream.rangeClosed(1, totalPages)
                    .boxed()
                    .collect(Collectors.toList());
            modelAndView.addObject("pageNumbers", pageNumbers);
        }
        return modelAndView;
    }

    @RequestMapping(value = "/admin/user", method = RequestMethod.POST)
    public ModelAndView tableCategory(
            @RequestParam("page") int page,  @RequestParam("size") int size) {
        int currentPage = page;
        int pageSize = size;
        Page<User> bookCategoryPage = userService.findPaginated(PageRequest.of(currentPage - 1, pageSize));
        ModelAndView modelAndView = new ModelAndView("admin/user/index::data_table");
        modelAndView.addObject("page", bookCategoryPage);


        int totalPages = bookCategoryPage.getTotalPages();
        if (totalPages > 0) {
            List<Integer> pageNumbers = IntStream.rangeClosed(1, totalPages)
                    .boxed()
                    .collect(Collectors.toList());
            modelAndView.addObject("pageNumbers", pageNumbers);
        }
        return modelAndView;
    }

    @RequestMapping(value = "/admin/user/add", method = RequestMethod.GET)
    public ModelAndView addUserView(){
        List<UserGroup> userGroups = userGroupService.findAll();
        User user = new User();
        ModelAndView modelAndView = new ModelAndView("admin/user/add");
        modelAndView.addObject("addUser",user);
        modelAndView.addObject("userGroups",userGroups );
        return modelAndView;
    }

    @RequestMapping(value = "/admin/user/edit", method = RequestMethod.GET)
    public ModelAndView userDetail(
            @RequestParam("id") Long id
    ){
        Long user_id = id;
        List<UserGroup> userGroups = userGroupService.findAll();
        User user = userRepository.findById(user_id).get();
        ModelAndView modelAndView = new ModelAndView("admin/user/edit");
        modelAndView.addObject("addUser",user);
        modelAndView.addObject("userGroups",userGroups );
        return modelAndView;
    }

    @RequestMapping(value="/admin/user/addRequest", method = RequestMethod.POST)
    public String addUser(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/admin/user/add";
        }

//        System.out.print(bookCategory);
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
//        bookCategory.setCreateDate(timestamp);
        // lombok
        user.setCreatedDate(timestamp);
//        bookCategory.setDisplayOrder(1);
        user.getPassword();
        user.setPassword( new BCryptPasswordEncoder().encode(user.getPassword()));
        userRepository.save(user);
        return "redirect:/admin/user";
    }

    @Modifying
    @RequestMapping(value="/admin/user/editRequest", method = RequestMethod.POST)
    public String updateUser(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "redirect:/admin/user/edit?id="+user.getId();
        }
        userRepository.save(user);
        return "redirect:/admin/user";
    }

//    @Modifying
    @GetMapping("/admin/user/delete")
    public String deleteUser(
            @RequestParam("id") Long id
    ){
        Long user_id = id;
        List<CartItemDto> numItemId= cartRepository.getAllByUserId(user_id);
        for (CartItemDto item : numItemId) {
            long itemID=item.getItemId();
            cartRepository.deleteByBook_IdAndUser_Id(itemID,user_id);
        }
        userRepository.deleteById(user_id);
        return "redirect:/admin/user";
    }

    @RequestMapping(value = "/admin/user/search", method = RequestMethod.GET)
    public ModelAndView searchUser( @RequestParam("term") String term ) {
        int currentPage = 1;
        int pageSize = 5;
        Page<User> bookCategoryPage =userService.search(PageRequest.of(currentPage - 1, pageSize),term);
        ModelAndView modelAndView = new ModelAndView("admin/user/index");
        modelAndView.addObject("page", bookCategoryPage);
        int totalPages = bookCategoryPage.getTotalPages();
        if (totalPages > 0) {
            List<Integer> pageNumbers = IntStream.rangeClosed(1, totalPages)
                    .boxed()
                    .collect(Collectors.toList());
            modelAndView.addObject("pageNumbers", pageNumbers);
        }
        return modelAndView;
    }

    @RequestMapping(value = "/admin/user/search", method = RequestMethod.POST)
    public ModelAndView tableSearch(
            @RequestParam("page") int page,  @RequestParam("size") int size, @RequestParam("term") String term ) {
        int currentPage = page;
        int pageSize = size;
        Page<User> bookCategoryPage = userService.search(PageRequest.of(currentPage - 1, pageSize),term);
        ModelAndView modelAndView = new ModelAndView("admin/user/index::data_table");
        modelAndView.addObject("page", bookCategoryPage);
        int totalPages = bookCategoryPage.getTotalPages();
        if (totalPages > 0) {
            List<Integer> pageNumbers = IntStream.rangeClosed(1, totalPages)
                    .boxed()
                    .collect(Collectors.toList());
            modelAndView.addObject("pageNumbers", pageNumbers);
        }
        return modelAndView;
    }
}
