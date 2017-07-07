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
            
            rs.first();
            
//            pw.println("" + idno + pass);
            
            if(rs.getInt("idno")==idno && rs.getString("password").equalsIgnoreCase(pass) && rs.getString("userType").equalsIgnoreCase("user")) {
                HttpSession session = request.getSession();
                session.setAttribute("idNumber", idno);
                session.setAttribute("password", pass);
                session.setAttribute("firstname", rs.getString("firstname"));
                session.setAttribute("lastname", rs.getString("lastname"));
                session.setAttribute("email", rs.getString("email"));
                response.sendRedirect("dashboard.jsp");
            } else if (rs.getInt("idno")==idno && rs.getString("password").equals(pass) && rs.getString("userType").equalsIgnoreCase("admin")) {
                HttpSession session = request.getSession();
                session.setAttribute("idNumber", idno);
                session.setAttribute("password", pass);
                session.setAttribute("firstname", rs.getString("firstname"));
                session.setAttribute("lastname", rs.getString("lastname"));
                session.setAttribute("email", rs.getString("email"));
                response.sendRedirect("adminDashboard.php");
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
