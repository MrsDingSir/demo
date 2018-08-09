package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.pojo.Book;
import com.example.demo.service.BookService;


@Controller
@RequestMapping("/book")
public class BookController {
	@Autowired
	private BookService bookService;
	
	@GetMapping
	public String index(Model model) {
		List<Book> books=this.bookService.selectAll();
		model.addAttribute("books", books);
		return "demo";
	}	
}
