/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControllerServlet;

 
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
@WebServlet(name = "Cierre_Sesion", urlPatterns = "/Cierre_Sesion")

public class Cierre_Sesion extends HttpServlet{
   //Ya sea que el método sea por GET o POST, cerraremos la sesion.
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession(true);
        HttpSession objetosesion=request.getSession(true);
        //Cerrar sesion
        
        
        
        response.setHeader("Cache-Control", "no-cache,nostore, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Epires","0");
        //Redirecciono a MenuInicio.jsp
        JOptionPane.showMessageDialog(null, "cerro sesion1");
        response.sendRedirect("MenuInicio.jsp");
        //objetosesion.invalidate();
        //sesion.invalidate();
        
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession(true);
        HttpSession objetosesion=request.getSession(true);
        //Cerrar sesion
        response.setHeader("Cache-Control", "no-cache,nostore, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Epires","0");
        //Redirecciono a MenuInicio.jsp
        JOptionPane.showMessageDialog(null, "cerro sesion2");
        response.sendRedirect("MenuInicio.jsp");
        //sesion.invalidate();
        objetosesion.invalidate();
        
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession(true);
        HttpSession objetosesion=request.getSession(true);
        //Cerrar sesion
        
        
        
        response.setHeader("Cache-Control", "no-cache,nostore, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Epires","0");
        //Redirecciono a MenuInicio.jsp
        JOptionPane.showMessageDialog(null, "cerro sesion3");
        response.sendRedirect("MenuInicio.jsp");
        objetosesion.invalidate();
        sesion.invalidate();
        
    }
  
}
