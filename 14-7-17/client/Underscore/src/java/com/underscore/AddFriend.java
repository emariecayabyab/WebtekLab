/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.underscore;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Colvin
 */
public class AddFriend extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String myidno = request.getParameter("myidno");
        String rqidno = request.getParameter("rqidno");
        
        PrintWriter out = response.getWriter();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/underscore", "root", "");
            
            PreparedStatement ps = conn.prepareStatement("INSERT INTO requests (fromID, toID, status, date) VALUES (?, ?, ?, now())");
            
            ps.setString(1, myidno);
            ps.setString(2, rqidno);
            ps.setString(3, "pending");
            
            int rs = ps.executeUpdate();
            
            if(rs > 0) {
                response.sendRedirect("friends.jsp");
            } else {
                out.println("Error");
            }
        } catch (Exception e){
            
        }        
    }
}
