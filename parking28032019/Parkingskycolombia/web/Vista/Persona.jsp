

<%@page contentType="text/html" pageEncoding="UTF-8" import="Util.ConexionSKY"%>
<%@page import="Model.DaoPersona "%>
<%@page import="Controller.Beans.Persona"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Persona</title>
        <link href="<%=request.getContextPath()%>/Vista/css/HojaEstilosRoger.css" rel="stylesheet" type="text/css"/>
        <script src="<%=request.getContextPath()%>/Vista/Js/3boton.js"></script>
    </head>
    <body>
        <center><h1>Parking Sky Colombia</h1></center>
        <form id="form1" name="form1" action="<%=request.getContextPath()%>/persona.do" method="post">
                 <center><fieldset>    
                <center><H1>Formulario Para Registrar Persona</H1></center>
                <br>
                <input type="hidden" name="txtOpcion" id="txtOpcion"/> 
                
<Label>idusuario</Label><br>
<input type="text" name="id_Registro_Usuario" value="<%if (request.getAttribute("C_id") != null) {%>${C_id}<%}%>" required><br>
              
                <Label>Documento de  la persona</Label><br>
<input title="Se necesita llenar este campo" type="text" name="Identificacion_Usuario" value="<%if (request.getAttribute("C_ide") != null) {%>${C_ide}<%}%>" required><br>
               
 
                <Label>Nombres</Label><br>
<input type="text" name="Nombre_Usuario" value="<%if (request.getAttribute("C_nom") != null) {%>${C_nom}<%}%>" required><br>
               
                    <Label>Apellidos</Label><br>
<input type="text" name="Apellido_Usuario" value="<%if (request.getAttribute("C_ape") != null) {%>${C_ape}<%}%>" required><br>
                    
             
         <Label>Telefono</Label><br>
<input type="text" name="Telefono_Usuario" value="<%if (request.getAttribute("C_tel") != null) {%>${C_tel}<%}%>" required><br>
               
         <Label>Correo </Label><br>
<input type="text" name="Correo_Usuario" value="<%if (request.getAttribute("C_cor") != null) {%>${C_cor}<%}%>" required><br>
<br><Label>Password</Label><br>
<input type="password" name="Contraseña_Usuario" value="<%if (request.getAttribute("C_pas") != null) {%>${C_pas}<%}%>" required><br>
                         <br>
 
<Label>Rol Usuario</Label><br>
     <input type="text" name="Rol_Usuario" value="<%if (request.getAttribute("C_rol") != null) {%>${C_rol}<%}%>" required><br>
                 
 
                      <Label>Tipo Documento</Label><br>
                       <center> <select name="selettdoc">

                            <%
                                out.print("<option>" + request.getAttribute("C_tip") + "</option>");
                            %> 
                            <% //Bloque de Codigo para consultar el Tipo de Documento
                                ConexionSKY cn = new ConexionSKY();
                                cn.ObtenerConexion();
                                DaoPersona DPersona = new DaoPersona();
                                cn.rt = DPersona.consultarDescripcionTDUsuario();
                                while (cn.rt.next()) {
                                    out.print("<option>" + cn.rt.getString(1) + "</option>");
                                }
                                cn.CerrarConexion();
                            %> 

                        </select></center>
                        <br>
                        <br>
                        <center><input id="btnRegistrar" type="button" value="Registrar" onclick="opcionInsertar();"/>
                        <input id="btnConsultar" type="button" value="Consultar" onclick="opcionConsultar();"/>
                        <input id="btnModificar" type="button" value="Modificar" onclick="opcionModificar();" />   </center>

                        <section hidden>
                            <span id="sessionUsuario" css="position:absolute; top:-1000px;">${sessionScope.variable}</span>
                        </section>

                        <script>
                                var mensaje=document.getElementById("sessionUsuario").innerHTML;
                  
                                if(mensaje=== "Lider") {


                                document.getElementById('btnRegistrar').remove();
                                document.getElementById('btnModificar').remove();
                                alert("INFO: El " + mensaje + " no puede registrar ni modificar.");

                            } else if (mensaje === "Tecnico") {

                                alert("INFO: El " + mensaje + " puede realizar cualquier funcion.");

                            } else if (mensaje === "Administrador") {


                                alert("INFO: El " + mensaje + " puede realizar cualquier funcion.");

                            }
                        </script>
                             
                          <% if (request.getAttribute("mensaje") != null) {%>

                            ${mensaje}
                            <%}%>
                             </fieldset></center> 
                        </form>
                  
                        </body>
                        </html>
