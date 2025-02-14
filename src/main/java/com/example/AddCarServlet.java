package com.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add-car")
public class AddCarServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int carId= Integer.parseInt((String)req.getParameter("carId"));
		String carModel =(String)req.getParameter("carModel");
		String carBrand=(String)req.getParameter("carBrand");
		String carColour=(String)req.getParameter("carColour");
		int carPrice=Integer.parseInt((String)req.getParameter("carPrice"));
		
		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet-car-management-system-db?user=root& password=Saurav@chinu");
			PreparedStatement st= conn.prepareStatement("INSERT INTO car VALUES(?,?,?,?,?)");
			st.setInt(1, carId);
			st.setString(2, carModel);
			st.setString(3, carBrand);
			st.setString(4, carColour);
			st.setInt(5, carPrice);

			st.execute();
			
			resp.sendRedirect("index.jsp");
			
		}catch(Exception e) {
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
