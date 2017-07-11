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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author s326lab
 */
@WebServlet(name = "Post", urlPatterns = {"/Post"})
public class Post extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String content = request.getParameter("content");
        String idno = request.getParameter("idno");
        String privacy = request.getParameter("privacy");
        
        PrintWriter pw = response.getWriter();
        
//        pw.println(idno + " " + content);
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/underscore", "root", "");
            PreparedStatement ps = conn.prepareStatement("INSERT INTO posts (idno, content, privacy) VALUES (?, ?, ?)");
            
            ps.setString(1, idno);
            ps.setString(2, content);
            ps.setString(3, privacy);
            
            int rs = ps.executeUpdate();
            
            if(rs > 0){
                response.sendRedirect("dashboard.jsp");
            } else {
                response.sendRedirect("dashboard.jsp");
            }
        } catch (Exception e) {
            
        }
    }
}
