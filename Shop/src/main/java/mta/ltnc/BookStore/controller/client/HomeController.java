package mta.ltnc.BookStore.controller.client;

import lombok.Value;
import mta.ltnc.BookStore.dto.client.AccountDto;
import mta.ltnc.BookStore.dto.client.BookDto;
import mta.ltnc.BookStore.service.client.AuthorClientService;
import mta.ltnc.BookStore.service.client.BookClientService;
import mta.ltnc.BookStore.service.client.CategoryClientService;
import mta.ltnc.BookStore.service.client.PublisherClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/home")
public class HomeController {
    @Autowired
    private AuthorClientService authorService;
    @Autowired
    private PublisherClientService publisherService;
    @Autowired
    private CategoryClientService categoryService;
    @Autowired
    private BookClientService bookService;
    @GetMapping("/test")
    public ModelAndView manageCategory(HttpSession session) {
        AccountDto acc = new AccountDto();
        ModelAndView mav = new ModelAndView("client/shared/index2");
        HelpModelAndView.dataForLayout(mav,categoryService,publisherService,authorService,session);
        return mav;
    }
    @GetMapping("/index")
    public ModelAndView index(HttpSession session) {
        AccountDto acc = new AccountDto();
        ModelAndView mav = new ModelAndView("client/home/index");
        HelpModelAndView.dataForLayout(mav,categoryService,publisherService,authorService,session);
        mav.addObject("listHot",bookService.getTop8ByOrdOrderByBuysDesc());
        mav.addObject("listNew",bookService.getTop3ByOrdOrderByBuysDesc());
        mav.addObject("title","Trang chủ");
        return mav;
    }

//    @PostMapping("/search")
//    public ResponseEntity<?> getSearchResult(@Param("word") String word){
//        List<BookDto> list = bookService.getAllDto().stream().
//                filter(book -> book.getName().contains(word)).collect(Collectors.toList());
//        return ResponseEntity.ok(list);
//    }
}
