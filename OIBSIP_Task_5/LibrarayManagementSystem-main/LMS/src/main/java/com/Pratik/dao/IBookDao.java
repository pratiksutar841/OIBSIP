package com.sanju.dao;

import java.util.List;

import com.sanju.dto.Book;

public interface IBookDao {
	
	public String addBook(Book book);
	public Book searchBook(Integer bid);
	public String updateBook(Book bid);
	public String deleteBook(Integer book);
	public List<Book> getAllBooks();
	public String autoUpdateBook(String bid);

}
