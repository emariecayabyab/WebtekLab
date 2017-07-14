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

/**
 *
 * @author s326lab
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int idno = Integer.parseInt(request.getParameter("idno"));
        String pass = request.getParameter("password");
        String email = request.getParameter("email");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/underscore", "root", "");
            PreparedStatement ps = conn.prepareStatement("INSERT INTO users (idno, password, email, firstname, lastname, userType, status) VALUES(?, ?, ?, ?, ?, ?, ?)");
            
            ps.setInt(1, idno);
            ps.setString(2, pass);
            ps.setString(3, email);
            ps.setString(4, firstname);
            ps.setString(5, lastname);
            ps.setString(6, "user");
            ps.setString(7, "pending");
            
            int rs = ps.executeUpdate();
            
//            PreparedStatement ps2 = conn.prepareStatement("INSERT INTO friends (f1, f2) VALUES(?, ?)");
//            ps2.setInt(1, idno);
//            ps2.setInt(2,idno);
//            int rs2 = ps2.executeUpdate();
            
            if(rs > 0){
                response.sendRedirect("index.jsp");
            } else {
                response.sendRedirect("register.jsp");
            }
        } catch (Exception e) {
            
        }
    }
}
