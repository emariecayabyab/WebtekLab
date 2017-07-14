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
public class FriendAction extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String idno = request.getParameter("idno");
        String fridno = request.getParameter("fridno");
        PrintWriter out = response.getWriter();
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/underscore", "root", "");
            int rs=0;
            if(action.equalsIgnoreCase("accept")){
                PreparedStatement ps = conn.prepareStatement("INSERT INTO friends (f1, f2, since) VALUES (?, ?, now())");
                PreparedStatement ps2 = conn.prepareStatement("UPDATE requests SET status=? WHERE fromID=?");
                
                ps.setString(1, idno);
                ps.setString(2, fridno);
                
                ps2.setString(1, "accepted");
                ps2.setString(2, fridno);
                
                rs = ps.executeUpdate();
                rs = ps2.executeUpdate();
                if(rs > 0){
                    ps.setString(2, idno);
                    ps.setString(1, fridno);
                    rs = ps.executeUpdate();
                    
                    response.sendRedirect("friends.jsp");
                } else {
                    out.println("Error");
                }
            } else {
                PreparedStatement ps3 = conn.prepareStatement("UPDATE requests SET status=? WHERE fromID=?");
                ps3.setString(1, "accepted");
                ps3.setString(2, fridno);
            }
            
        } catch (Exception e) {
            
        }
    }
}
