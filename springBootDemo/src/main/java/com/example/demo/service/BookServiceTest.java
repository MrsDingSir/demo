package com.example.demo.service;



import java.util.List;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.Assert;

import com.example.demo.pojo.Book;


@RunWith(SpringRunner.class)
@SpringBootTest
public class BookServiceTest {
	@Autowired
	private BookService bookService;
	@Test
	public void testSelectAll() {
		List<Book> list=this.bookService.selectAll();
		System.err.println(list);
		Assert.notNull(list, "jjsksk");
	}

}
