package mta.ltnc.BookStore.managers;

import mta.ltnc.BookStore.entity.BookCategory;
import mta.ltnc.BookStore.repositories.BookCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
* Generated by Spring Data Generator on 22/06/2019
*/
@Component
public class BookCategoryManager {

	private BookCategoryRepository bookCategoryRepository;

	@Autowired
	public BookCategoryManager(BookCategoryRepository bookCategoryRepository) {
		this.bookCategoryRepository = bookCategoryRepository;
	}

}