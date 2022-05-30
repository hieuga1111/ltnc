package mta.ltnc.BookStore.repositories;

import mta.ltnc.BookStore.entity.BookImage;
import mta.ltnc.BookStore.entity.Image;
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
public interface BookImageRepository extends JpaRepository<BookImage, Integer>, JpaSpecificationExecutor<BookImage> {
    @Query("SELECT bi.image FROM BookImage bi WHERE bi.book.id = :bookId")
    List<Image> getAllByBook(@Param("bookId")Long bookId);
}
