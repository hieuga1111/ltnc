package mta.ltnc.BookStore.service.client;

import mta.ltnc.BookStore.dto.ResponseDto;
import mta.ltnc.BookStore.dto.client.BookDto;
import mta.ltnc.BookStore.entity.Book;
import mta.ltnc.BookStore.entity.User;
import mta.ltnc.BookStore.repositories.BookImageRepository;
import mta.ltnc.BookStore.repositories.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class BookClientService {
    @Autowired
    private BookRepository bookRepository;

    @Autowired
    private BookImageRepository bookImageRepository;

    public ResponseDto getAll() {
        return new ResponseDto("0", "Success", bookRepository.findAll());
    }

    public List<BookDto> getAllDto() {
        List<BookDto> ls = bookRepository.getAllDto();
        ls.forEach(x -> {
            x.setListImages(bookImageRepository.getAllByBook(x.getId()));
        });
        return ls;
    }

    public BookDto getOneDto(Long id) {
        BookDto temp = bookRepository.getOneDto(id);
        temp.setListImages(bookImageRepository.getAllByBook(temp.getId()));
        return temp;
    }

    public List<BookDto> getSameAuthorDto(Long authorId) {
        List<BookDto> temp = bookRepository.getSameAuthorDto(authorId);
        temp = temp.size() > 4 ? temp.subList(0,3) : temp;
        temp.forEach(x -> {
            x.setListImages(bookImageRepository.getAllByBook(x.getId()));
        });
        return temp;
    }
    public List<BookDto> getSameBookCategoryDto(Long authorId) {
        List<BookDto> temp = bookRepository.getSameBookCategoryDto(authorId);
        temp = temp.size() > 4 ? temp.subList(0,3) : temp;
        temp.forEach(x -> {
            x.setListImages(bookImageRepository.getAllByBook(x.getId()));
        });
        return temp;
    }
    public List<BookDto> getSamePublisherDto(Long publisherId) {
        List<BookDto> temp = bookRepository.getSamePublisherDto(publisherId).subList(0,3);
        temp = temp.size() > 4 ? temp.subList(0,3) : temp;
        temp.forEach(x -> {
            x.setListImages(bookImageRepository.getAllByBook(x.getId()));
        });
        return temp;
    }

    public Book findById(Long bookId){
        return bookRepository.findById(bookId).get();
    }
    public List<BookDto> getTop4ByOrdOrderByBuysDesc(){
        List<BookDto> temp = bookRepository.getTop4ByOrderByBuysDesc();
        temp = temp.size() > 4 ? temp.subList(0,3) : temp;
        temp.forEach(x -> {
            x.setListImages(bookImageRepository.getAllByBook(x.getId()));
        });
        return temp;
    }
    public List<BookDto> getTop3ByOrdOrderByBuysDesc(){
        List<BookDto> temp = bookRepository.getTop4ByOrderByBuysDesc();
        temp = temp.size() > 3 ? temp.subList(0,3) : temp;
        temp.forEach(x -> {
            x.setListImages(bookImageRepository.getAllByBook(x.getId()));
        });
        return temp;
    }
    public List<BookDto> getTop8ByOrdOrderByBuysDesc(){
        List<BookDto> temp = bookRepository.getTop8ByOrderByBuysDesc();
        temp.forEach(x -> {
            x.setListImages(bookImageRepository.getAllByBook(x.getId()));
        });
        return temp;
    }

    public List<BookDto> findPaginated(List<BookDto> list,int pageSize, int currentPage) {
        int startItem = currentPage * pageSize;

        if (list.size() < startItem) {
            list = new ArrayList<>();
        } else {
            int toIndex = Math.min(startItem + pageSize, list.size());
            list = list.subList(startItem, toIndex);
        }
        return list;
    }

    public int getTotalPagesFromList(List<BookDto> list, int pageSIze){
        return (int) (list.size() / pageSIze) + 1;
    }

}
