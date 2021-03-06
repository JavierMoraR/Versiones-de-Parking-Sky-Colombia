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
import javax.swing.JOptionPane;

/**
 *
 * @author FAMILIAR
 */
@WebServlet(name = "RegistrarUsuario", urlPatterns = "/usuario")
public class RegistrarUsuario extends HttpServlet {

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
    //String tipd = "select count(id_Registro_Usuario) from id";
    String id = request.getParameter("id");    
    String nom = request.getParameter("nombre");
    String ape = request.getParameter("apellido");
    String doc = request.getParameter("documento");
    String cor = request.getParameter("correo");
    String tel = request.getParameter("telefono");
    String pas = request.getParameter("password");
    String rol = request.getParameter("rolusuario");
    
    Consultas co = new Consultas();
    String MensajeExito; 
    String MensajeError;
    MensajeExito = "El registro de Persona se ha realizado satisfactoriamente";
    MensajeError = "El registro de Persona ha fallado3";
    if(co.registrarUsuario( id, nom, ape, doc, cor, tel, pas, rol)){
        JOptionPane.showMessageDialog(null, "El registro de Persona se ha realizado satisfactoriamente");
        response.sendRedirect("RegistroVehiculo.jsp");
    }else{
        if((id=" ")&&(nom=" ")&&(ape=" ")&&(doc=" ")&&(cor=" ")&&(tel=" ")&&(usu=" ")&&(pas=" ")){
            JOptionPane.showMessageDialog(null, "El registro de Persona ha fallado1");
            response.sendRedirect("RegisUsuario.jsp");
            }
    JOptionPane.showMessageDialog(null, "El registro de Persona ha fallado2");
    response.sendRedirect("RegisUsuario.jsp");
      
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
