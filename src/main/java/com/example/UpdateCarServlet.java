package com.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/update-car")
public class UpdateCarServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int carId=Integer.parseInt(req.getParameter("carId"));
		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet-car-management-system-db?user=root& password=Saurav@chinu");
			PreparedStatement st= conn.prepareStatement("SELECT * FROM car WHERE carId=?");
			st.setInt(1, carId);
			ResultSet rs =st.executeQuery();
			req.setAttribute("resultset", rs);
			req.getRequestDispatcher("update-car.jsp").forward(req, resp);						
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection conn=null;	
		int carId=Integer.parseInt(req.getParameter("carId"));
		String carModel=req.getParameter("carModel");
		String carBrand=req.getParameter("carBrand");
		String carColor=req.getParameter("carColor");
		int carPrice=Integer.parseInt(req.getParameter("carPrice"));
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet-car-management-system-db?user=root& password=Saurav@chinu");		
			PreparedStatement st=conn.prepareStatement("UPDATE car SET carModel=?, carBrand=?, carColour=?, carPrice=? WHERE carId=?");
			st.setString(1, carModel);
			st.setString(2, carBrand);
			st.setString(3, carColor);
			st.setInt(4, carPrice);
			st.setInt(5, carId);
			
			st.execute();
			st=conn.prepareStatement("SELECT * FROM car");
			ResultSet rs =st.executeQuery();
			req.setAttribute("resultset", rs);
			req.getRequestDispatcher("display-cars.jsp").forward(req, resp);
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}	
		
	}
	
	
	
	
	
	
	
	
	
}
