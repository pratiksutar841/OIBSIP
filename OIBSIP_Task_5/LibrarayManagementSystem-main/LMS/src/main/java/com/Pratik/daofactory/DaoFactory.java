package com.sanju.daofactory;

import com.sanju.dao.BookDaoImpl;
import com.sanju.dao.IBookDao;
import com.sanju.dao.IStudentDao;
import com.sanju.dao.StudentDaoImpl;

public class DaoFactory {

	private DaoFactory() {

	}

	public static IStudentDao studentDao = null;
	public static IBookDao bookDao = null;

	public static IStudentDao getStudentDao() {

		if (studentDao == null) {
			studentDao = new StudentDaoImpl(); //StudentDaoImpl object
		}

		return studentDao;

	}

	public static IBookDao getBookDao() {

		if (bookDao == null) {
			bookDao = new BookDaoImpl(); //BookDaoImpl object
		}

		return bookDao;

	}
	

}
