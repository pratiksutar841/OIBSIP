package com.sanju.servicefactory;

import com.sanju.service.BookServiceImpl;
import com.sanju.service.IBookService;
import com.sanju.service.IStudentService;
import com.sanju.service.StudentServiceImpl;

public class ServiceFactory {
	private ServiceFactory() {
		// TODO Auto-generated constructor stub
	}

	public static IStudentService studentService = null;
	public static IBookService bookService = null;

	public static IBookService getBookService() {

		if (bookService == null) {
			bookService = new BookServiceImpl();
		}

		return bookService;

	}

	public static IStudentService getStudentService() {

		if (studentService == null)
			studentService = new StudentServiceImpl();

		return studentService;
	}

}
