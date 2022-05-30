package mta.ltnc.BookStore.controller.client;


import mta.ltnc.BookStore.dto.client.AuthorDto;
import mta.ltnc.BookStore.dto.client.BookCateDto;
import mta.ltnc.BookStore.dto.client.BookDto;
import mta.ltnc.BookStore.entity.Book;
import mta.ltnc.BookStore.entity.BookCategory;
import mta.ltnc.BookStore.entity.Category;
import mta.ltnc.BookStore.entity.Publisher;
import mta.ltnc.BookStore.service.client.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Controller
@RequestMapping("/book-by")
public class BookByController {
    @Autowired
    private BookClientService bookService;
    @Autowired
    private AuthorClientService authorService;
    @Autowired
    private PublisherClientService publisherService;
    @Autowired
    private CategoryClientService categoryService;
    @Autowired
    private BookCategoryClientService bookCategoryService;


    //    @GetMapping("/filtered-by-author")
//    public ModelAndView filteredByAuthor(@RequestParam("id")Long id, HttpSession session){
////        AuthorDto author = authorService.getAllByAuthorType()
//    }
    @GetMapping("/filter-by-name")
    public ModelAndView listBookByName(@RequestParam("name")String name,
                                       @RequestParam("page") Optional<Integer> page){
        List<BookDto> listSameNameBook = bookService.getAllDto().stream().
                filter(b -> b.getName().contains(name)).collect(Collectors.toList());
        int currentPage = page.orElse(1);
        int pageSize = 12;

        int totalPages = bookService.getTotalPagesFromList(listSameNameBook, pageSize);
        List<BookDto> list = bookService.findPaginated(listSameNameBook, pageSize,currentPage - 1);
        ModelAndView mav = new ModelAndView("client/book_by/index");
        mav.addObject("list", list);

        Page<Book> pageData
                = new PageImpl<Book>(new ArrayList<>(),PageRequest.of(currentPage - 1, pageSize), listSameNameBook.size());
        mav.addObject("page", pageData);

        if (totalPages > 0) {
            List<Integer> pageNumbers = IntStream.rangeClosed(1, totalPages)
                    .boxed()
                    .collect(Collectors.toList());
            mav.addObject("pageNumbers", pageNumbers);
        }
        mav.addObject("search_value", name);
        return mav;
//
    }


    @GetMapping("/filtered-by-author")
    public ModelAndView filterBookByAuthor(@RequestParam("select_author")Long id, HttpSession session){
        List<BookDto> listSameBook = bookService.getAllDto().stream().
                filter(b -> b.getAuthorId().equals(id)).collect(Collectors.toList());
        ModelAndView mav = new ModelAndView("client/book_by/index2");
        HelpModelAndView.dataForLayout(mav,categoryService,publisherService,authorService,session);
        mav.addObject("list", listSameBook);
        return mav;
    }
    @GetMapping("/filtered-by-publish")
    public ModelAndView filterBookByPublish(@RequestParam("select_publish")Long id, HttpSession session){
        List<BookDto> listSameBook = bookService.getAllDto().stream().
                filter(b -> b.getPublisherId().equals(id)).collect(Collectors.toList());
        ModelAndView mav = new ModelAndView("client/book_by/index2");
        HelpModelAndView.dataForLayout(mav,categoryService,publisherService,authorService,session);
        mav.addObject("list", listSameBook);
        return mav;
    }
    @GetMapping("/filtered-by-bookcate")
    public ModelAndView listBookByBookcate(@RequestParam("select_bookcate")Optional<Integer> id, HttpSession session){
        List<BookDto> listSameCategoryBook = bookService.getAllDto().stream().
                filter(b -> b.getBookCategoryId().intValue() == id.get().intValue()).collect(Collectors.toList());
        ModelAndView mav = new ModelAndView("client/book_by/index2");
        mav.addObject("list", listSameCategoryBook);
        HelpModelAndView.dataForLayout(mav,categoryService,publisherService,authorService,session);
        return mav;
    }

    @GetMapping("/by_category")
    public ModelAndView listBookByCategory(@RequestParam("id")Long id, HttpSession session){
        List<BookDto> listSameBook = bookService.getAllDto().
                stream().filter(b -> b.getParentCategoryId() == id).collect(Collectors.toList());
        ModelAndView mav = new ModelAndView("client/book_by/index2");
        mav.addObject("list", listSameBook);
        HelpModelAndView.dataForLayout(mav,categoryService,publisherService,authorService,session);
        return mav;
    }

}
