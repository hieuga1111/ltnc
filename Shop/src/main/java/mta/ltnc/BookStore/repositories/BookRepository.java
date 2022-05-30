package mta.ltnc.BookStore.repositories;

import mta.ltnc.BookStore.dto.client.BookDto;
import mta.ltnc.BookStore.entity.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
* Generated by Spring Data Generator on 22/06/2019
*/
@Repository
public interface BookRepository extends JpaRepository<Book, Long>, JpaSpecificationExecutor<Book> {

    @Query("SELECT new mta.ltnc.BookStore.dto.client.BookDto(b) FROM Book b")
    List<BookDto> getAllDto();

    @Query("SELECT new mta.ltnc.BookStore.dto.client.BookDto(b) FROM Book b WHERE b.id = :id")
    BookDto getOneDto(@Param("id")Long id);

    @Query("SELECT new mta.ltnc.BookStore.dto.client.BookDto(b) FROM Book b WHERE b.author.id = :authorId")
    List<BookDto> getSameAuthorDto(@Param("authorId")Long authorId);

    @Query("SELECT new mta.ltnc.BookStore.dto.client.BookDto(b) FROM Book b WHERE b.bookCategory.id = :bookCategoryId")
    List<BookDto> getSameBookCategoryDto(@Param("bookCategoryId")Long bookCategoryId);

    @Query("SELECT new mta.ltnc.BookStore.dto.client.BookDto(b) FROM Book b WHERE b.publisher.id = :publisherId")
    List<BookDto> getSamePublisherDto(@Param("publisherId")Long publisherId);

    List<BookDto> getTop4ByOrderByBuysDesc();
    List<BookDto> getTop8ByOrderByBuysDesc();

}