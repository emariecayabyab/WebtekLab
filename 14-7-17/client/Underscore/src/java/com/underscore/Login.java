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

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int idno = Integer.parseInt(request.getParameter("idno"));
        String pass = request.getParameter("password");
        
        PrintWriter pw = response.getWriter();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/underscore", "root", "");
            PreparedStatement ps = conn.prepareStatement("select * from users where idno=? and password=?");
            
            ps.setInt(1, idno);
            ps.setString(2, pass);
            
            ResultSet rs = ps.executeQuery();
            
            if(rs.first()) {
                if(rs.getString("userType").equalsIgnoreCase("user") && rs.getString("status").equalsIgnoreCase("approved")) {
                    HttpSession session = request.getSession();
                    session.setAttribute("idno", idno);
                    session.setAttribute("password", pass);
                    session.setAttribute("firstname", rs.getString("firstname"));
                    session.setAttribute("lastname", rs.getString("lastname"));
                    session.setAttribute("email", rs.getString("email"));
                    response.sendRedirect("loginMessage.jsp");
                } else if(rs.getString("userType").equalsIgnoreCase("user") && rs.getString("status").equalsIgnoreCase("pending")) {
                    response.sendRedirect("loginMessage.jsp");
                }
            } else {
                response.sendRedirect("index.jsp");
            }
        } catch(Exception e){
            
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
