/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.technical;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SANT JI
 */
public class FlightList extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FlightList</title>");            
            out.println("</head>");
            out.println("<body>");
            String name=request.getParameter("name");  
           String source=request.getParameter("source");
            String date=request.getParameter("date");
            
           
           
//           connection to jdbc 
          try{
                 Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flydatabase","root","");
                String q="select * from flights where name=? and source=?";
                PreparedStatement p=con.prepareStatement(q);
                p.setString(1,name);
                p.setString(2,source);
           
               
               ResultSet sc=p.executeQuery();
              HttpSession session=request.getSession();
						if(sc.next()) {
                                                    String fly=sc.getString(1);
                                                    String sur=sc.getString(2);
                                                     String desi=sc.getString(3);
                                                     String dates=sc.getString(4);
                                                     String times=sc.getString(5);
                                                     String prices=sc.getString(6);
                                                    
							session.setAttribute("a",fly);
                                                        session.setAttribute("b",sur);
                                                        session.setAttribute("c",desi);
                                                         session.setAttribute("d",dates);
                                                          session.setAttribute("e",times);
                                                           session.setAttribute("f",prices);
                                                         
							
						}
						else {
						
							response.sendRedirect("HomePage.jsp");
						}
               
                 }
            catch (ClassNotFoundException |SQLException e) {
                out.print(e);
            }
          response.sendRedirect("FlightList.jsp");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
