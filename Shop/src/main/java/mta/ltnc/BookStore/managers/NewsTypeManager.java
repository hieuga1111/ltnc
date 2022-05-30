package mta.ltnc.BookStore.managers;

import mta.ltnc.BookStore.entity.NewsType;
import mta.ltnc.BookStore.repositories.NewsTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
* Generated by Spring Data Generator on 22/06/2019
*/
@Component
public class NewsTypeManager {

	private NewsTypeRepository newsTypeRepository;

	@Autowired
	public NewsTypeManager(NewsTypeRepository newsTypeRepository) {
		this.newsTypeRepository = newsTypeRepository;
	}

}
