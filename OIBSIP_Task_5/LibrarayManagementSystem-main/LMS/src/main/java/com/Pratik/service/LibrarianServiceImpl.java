package com.sanju.service;

import java.util.List;

import com.sanju.dao.ILibrarianDao;
import com.sanju.dao.LibrarianDaoImpl;
import com.sanju.dto.Borrow;
import com.sanju.dto.Librarian;



public class LibrarianServiceImpl implements ILibrarianService {
	ILibrarianDao dao=new LibrarianDaoImpl();

	@Override
	public Librarian getLibrarian(String userName) {
		
		return dao.getLibrarian(userName);
	}

	@Override
	public String addReturnRequest(Borrow borrow) {
		
		return dao.addReturnRequest(borrow);
	}

	@Override
	public String deleteReturnRequest(String sid, Integer bid) {

		return dao.deleteReturnRequest(sid, bid);
	}

	@Override
	public List<Borrow> selectReturnRequest() {
		return dao.selectReturnRequest();
	}

}
