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

@WebServlet(name = "Unfriend", urlPatterns = {"/Unfriend"})
public class Unfriend extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        PrintWriter pw = response.getWriter();

        String idno = request.getParameter("idno");
        String userId = ""+session.getAttribute("idno");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/underscore", "root", "");
            PreparedStatement ps = conn.prepareStatement("DELETE FROM friends WHERE ((f1=? AND f2=?) OR (f1=? AND f2=?))");
            
            ps.setString(1, idno);
            ps.setString(2, userId);
            ps.setString(3, userId);
            ps.setString(4, idno);
            
            int rs = ps.executeUpdate();
            
            if(rs > 0){
                response.sendRedirect("friends.jsp");
            } else {
                pw.println("Failed");
            }
        } catch (Exception e) {
            
        }
    }
}
