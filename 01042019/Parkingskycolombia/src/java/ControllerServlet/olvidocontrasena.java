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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
@WebServlet(name = "olvidocontrasena", urlPatterns = "/olvidocontrasena")
/**
 *
 * @author FAMILIAR
 */
public class olvidocontrasena extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String TipoDocumento =request.getParameter("tipodocumento");
        String documento =request.getParameter("documento");
        Consultas co= new Consultas();
        System.out.println("tipodocumento"+TipoDocumento);
        System.out.println(" documento "+documento);
        if(co.olvicontra(TipoDocumento, documento)){            
           HttpSession objetosesion=request.getSession(true);
           objetosesion.setAttribute("tipodocumento",TipoDocumento);
           JOptionPane.showMessageDialog(null, "El usuario y clave son correctos");
           response.sendRedirect("validacioncorreo.jsp");
        }else {
            response.sendRedirect("Olvidosucontrasena.jsp");
            System.out.println(" "+TipoDocumento);
            //System.out.println("  "+documento);
            JOptionPane.showMessageDialog(null, "El usuario y clave son incorrectos2");
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
