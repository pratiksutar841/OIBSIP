package com.sanju.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.sanju.dto.Book;
import com.sanju.dto.Student;
import com.sanju.service.IBookService;
import com.sanju.service.IStudentService;
import com.sanju.servicefactory.ServiceFactory;


@WebFilter("/stdtest/*")
public class StudentFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		
		HttpServletRequest hreq = (HttpServletRequest) request;
		String requestURI = hreq.getRequestURI();
		IStudentService studentService = ServiceFactory.getStudentService();

		
		if (requestURI.endsWith("borrow")) {

			String bid = hreq.getParameter("bid");

			IBookService bookService = ServiceFactory.getBookService();
			Book book = bookService.searchBook(Integer.parseInt(bid));
			studentService = ServiceFactory.getStudentService();
			Student student = studentService.getStudent(hreq.getParameter("sid"));

			if (book != null && book.getQuantity() > 0) { //Book should be available with more than 0 quantity
				
				if(student!=null && student.getBooks()<3) { //student should be able to take books within the limit 3 books
						chain.doFilter(request, response);
				} else {
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("/std-limit.jsp");
					requestDispatcher.forward(request, response);
				}

			} else {
				request.setAttribute("bid", bid);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/std-booknotavailable.jsp");
				requestDispatcher.forward(request, response);
			}

		} else
			chain.doFilter(request, response);

	
		
		
		
		
		
		
		
	}	
		
		
	

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

  
	

	

}
