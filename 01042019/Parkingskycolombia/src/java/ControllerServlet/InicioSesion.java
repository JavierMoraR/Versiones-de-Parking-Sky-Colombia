/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControllerServlet;

import Model.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.swing.JOptionPane;


public class InicioSesion extends HttpServlet {

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
        HttpSession objetosesion=request.getSession();
        PrintWriter out = response.getWriter();
        String usuario =request.getParameter("usuario");
        String password =request.getParameter("password");
        Consultas co= new Consultas();
        if(co.autenticacion(usuario,password)){
           //HttpSession objetosesion=request.getSession();
           objetosesion.setAttribute("usuario",usuario);
           response.sendRedirect("Inicio.jsp");
        }else {
            response.sendRedirect("MenuInicio.jsp");
            System.out.println(" "+usuario);
            System.out.println("  "+password);
            
        objetosesion.invalidate();
        
        response.setHeader("Cache-Control", "no-cache,nostore, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Epires","0");
       
            JOptionPane.showMessageDialog(null, "El usuario y clave son incorrectos");
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
        HttpSession objetosesion=request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String usuario =request.getParameter("usuario");
        String password =request.getParameter("password");
        Consultas co= new Consultas();
        if(co.autenticacion(usuario,password)){
           //HttpSession objetosesion=request.getSession();
           objetosesion.setAttribute("usuario",usuario);
           response.sendRedirect("Inicio.jsp");
        }else {
            response.sendRedirect("MenuInicio.jsp");
            System.out.println(" "+usuario);
            System.out.println("  "+password);
            JOptionPane.showMessageDialog(null, "El usuario y clave son incorrectos");
        }
       
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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession objetosesion=request.getSession();
        PrintWriter out = response.getWriter();
        String usuario =request.getParameter("usuario");
        String password =request.getParameter("password");
        Consultas co= new Consultas();
        if(co.autenticacion(usuario,password)){
           //HttpSession objetosesion=request.getSession();
           objetosesion.setAttribute("usuario",usuario);
           response.sendRedirect("Inicio.jsp");
        }else {
            response.sendRedirect("MenuInicio.jsp");
            System.out.println(" "+usuario);
            System.out.println("  "+password);
            JOptionPane.showMessageDialog(null, "El usuario y clave son incorrectos");
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
