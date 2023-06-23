package com.sanju.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sanju.dto.Book;
import com.sanju.util.JdbcUtil;

public class BookDaoImpl implements IBookDao {

	@Override
	public String addBook(Book book) {
		Connection connection =null;
		PreparedStatement pstm=null;
		
		try {
			connection = JdbcUtil.getConnection();
			
			String query="insert into booklib (bid,title,author,quantity)values(?,?,?,?)";
			pstm=connection.prepareStatement(query);
			pstm.setInt(1,book.getBid());
			pstm.setString(2, book.getTitle());
			pstm.setString(3,book.getAuthor());
			pstm.setInt(4, book.getQuantity());
			
			int rowcount=pstm.executeUpdate();
			if(rowcount ==1) {
				System.out.println("BookDaoImpl.addBook()");
				return "success";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
		System.out.println("BookDaoImpl.failed()");
		return "failure";
		
	}

	@Override
	public Book searchBook(Integer bid) {
		
		Connection connection = null;
		PreparedStatement pstm = null;
		try {
			connection = JdbcUtil.getConnection();
			pstm = connection.prepareStatement("select * from booklib where bid=?");
			pstm.setInt(1, bid);
			ResultSet set = pstm.executeQuery();
			Book book = new Book();
			if (set != null) {
				if (set.next()) {
					book.setBid(set.getInt(1));
					book.setTitle(set.getString(2));
					book.setAuthor(set.getString(3));
					book.setQuantity(set.getInt(4));
					System.out.println(book.getTitle());
					return book;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String updateBook(Book book) {
		
		Connection connection = null;
		PreparedStatement pstm = null;
		try {
			connection = JdbcUtil.getConnection();
			String query="UPDATE booklib SET title=?,author=?,quantity = ? WHERE bid = ?;";
			pstm = connection.prepareStatement(query);

			if (pstm != null) {

				pstm.setString(1, book.getTitle());
				pstm.setString(2,book.getAuthor());
				pstm.setInt(3, book.getQuantity());
				pstm.setInt(4, book.getBid());

				int rowAffected = pstm.executeUpdate();
				if (rowAffected == 1) {
					return "success";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "failure";
	}

	@Override
	public String deleteBook(Integer bid) {
		
		Connection connection = null;
		PreparedStatement pstm = null;
		try {
			connection = JdbcUtil.getConnection();
			pstm = connection.prepareStatement("delete from booklib where bid=?");
			pstm.setInt(1, bid);
			int rowCount = pstm.executeUpdate();
			if (rowCount == 1) {
				return "success";
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "failure";
	}

	@Override
	public List<Book> getAllBooks() {
		
		List<Book> books = new ArrayList<>();
		Connection connection = null;
		PreparedStatement pstm = null;
		try {
			connection = JdbcUtil.getConnection();
			pstm = connection.prepareStatement("select * from booklib ");
			ResultSet set = pstm.executeQuery();

			if (set != null) {
				while (set.next()) {
					Book book = new Book();
					book.setBid(set.getInt(1));
					book.setTitle(set.getString(2));
					book.setAuthor(set.getString(3));
					book.setQuantity(set.getInt(4));
					books.add(book);
					
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return books;
	}

	@Override
	public String autoUpdateBook(String bid) {
		Connection connection = null;
		PreparedStatement pstm1 = null;
		PreparedStatement pstm2 = null;
		int row = 0;
		String option = bid.substring(0, 1);
		int bookId = Integer.parseInt(bid.substring(1));
		System.out.println(option);
		System.out.println(bookId);
		try {
			connection = JdbcUtil.getConnection();
			String decrementQuery="UPDATE booklib set quantity = quantity-1 WHERE bid = ?;";
			String incrementQuery="UPDATE booklib set quantity = quantity+1 WHERE bid = ?;";
			
			if("+".equals(option)) {
				pstm1 = connection.prepareStatement(incrementQuery);
				pstm1.setInt(1, bookId);
				
				row = pstm1.executeUpdate();
				if(row==1)
					return "success";
			}
			
			if("-".equals(option)) {
				pstm2 = connection.prepareStatement(decrementQuery);
				pstm2.setInt(1, bookId);
				
				row = pstm2.executeUpdate();
				if(row==1)
					return "success";
			}
			
			
				
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "failure";
	}

}
