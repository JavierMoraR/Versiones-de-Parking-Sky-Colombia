package ControllerServlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import Model.DaoPersona;
import Controller.Beans.Persona;
import java.sql.ResultSet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="ServletPersona", urlPatterns ={"/persona.do"})
public class ServletPersona extends HttpServlet {

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
       
       int opcion= Integer.parseInt(request.getParameter("txtOpcion"));
        
        //Declaración variables que guardaran los datos de los objetos de la pagina JSP
        String identificacion=request.getParameter("id_Registro_Usuario");
        String nombre=request.getParameter("NombreUsuario");
        String apellido=request.getParameter("ApellidoUsuario");
        String usuario=request.getParameter("IdentificacionUsuario");
        String telefono=request.getParameter("TelefonoUsuario");
        String correo=request.getParameter("CorreoUsuario");
        String idusuario=request.getParameter("id_UsuarioPersona");
        String password=request.getParameter("PasswordPersona");
        String rol=request.getParameter("RolUsuario");
        String tip=request.getParameter("idTipoDocumento");
        
        
         // se captura la descripcion  del tema  para hallar su respectivo ID
        String IdTipoDocumento=request.getParameter("selettdoc");
        
        //instanciar la clase Bean
        
        Persona BPersona=new Persona(identificacion,nombre,apellido,tip,usuario,telefono,correo,idusuario,password,rol);
        
        //se instancia la clase DaoPersona pasando el objeto del Bean
        DaoPersona DPersona=new DaoPersona(BPersona);
        
        //Declaramos El ResultSet
        ResultSet rs;
        
        String MensajeExito; 
        String MensajeError;
        
        //Iniciamos el Switch
        
        switch (opcion) {
            case 1: // Insertar Registro
                MensajeExito = "El registro de Persona se ha realizado satisfactoriamente";
                MensajeError = "El registro de Persona ha fallado";
                if (DPersona.agregarRegistro()) {
                  
                    request.setAttribute("mensaje", MensajeExito);
                    
                } else {
                    request.setAttribute("mensaje", MensajeError);
                }
                request.getRequestDispatcher("Vista/Persona.jsp").forward(request, response);
                break;
                           
            case 2://Consultar registro  
                MensajeExito = "El registro se ha consultado correctamente";
                MensajeError = "El registro no se ha podido consultar";
                try {
                    rs = (ResultSet) DPersona.consultarRegistro();
                    rs.next();
                    
              
                    request.setAttribute("C_idP", rs.getString(1));
                    request.setAttribute("C_nom", rs.getString(2));
                    request.setAttribute("C_ape", rs.getString(3));
                    request.setAttribute("C_tip", rs.getString(4));
                    request.setAttribute("C_ide", rs.getString(5));
                    request.setAttribute("C_tel", rs.getString(6));
                    request.setAttribute("C_cor", rs.getString(7));
                    request.setAttribute("C_usu", rs.getString(8));
                    request.setAttribute("C_pas", rs.getString(9));
                    request.setAttribute("C_rol", rs.getString(10));
                    

                    request.setAttribute("mensaje", MensajeExito);
                } catch (SQLException ex) {
                    Logger.getLogger(ServletPersona.class.getName()).log(Level.SEVERE, null, ex);
                    request.setAttribute("mensaje", MensajeError);
                }
               
                request.getRequestDispatcher("Vista/Persona.jsp").forward(request, response);
                break;
                
            case 3: //Modificar registro 
                MensajeExito="El Registro Se Modificó Exitosamente";
                MensajeError="El Registro No Se Modificó Exitosamente";
                   
                if(DPersona.actualizarRegistro()){
                request.setAttribute("mensaje", MensajeExito);
                
                }else{
                request.setAttribute("mensaje",MensajeError);
                }
                    request.getRequestDispatcher("Vista/Persona.jsp").forward(request, response);
               
                break;
                
                
            default:
                request.getRequestDispatcher("Vista/Persona.jsp").forward(request, response);
                break;
                
                
                
                
        }// Fin Switch
        
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
