package com.underscore;

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Search", urlPatterns = {"/Search"})
public class Search extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        	String searchUser = request.getParameter("searchUser");
                
                 PrintWriter pw = response.getWriter();
				
	try{
                            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/underscore", "root", "");
            PreparedStatement ps = conn.prepareStatement("select * from users where firstname=? or lastname=? or idno=?");
            
            ps.setString(1, searchUser);
            ps.setString(2, searchUser);
            ps.setString(3, searchUser);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.first()) {
                response.sendRedirect("userSearch.jsp");
            } else {
                response.sendRedirect("userSearch.jsp");
            }
           
        } catch(Exception e){
            		
	}
    }
}
