package com.sanju.dao;

import java.util.List;

import com.sanju.dto.Borrow;
import com.sanju.dto.Librarian;

public interface ILibrarianDao {
	public Librarian getLibrarian(String userName); // get the librarian credentials
	  
	  public String addReturnRequest(Borrow borrow);//adding the particular student request
	  
	  public String deleteReturnRequest(String sid, Integer bid);//deleting the particular student request
	  
	  public List<Borrow> selectReturnRequest();//Selecting all return requests
}
