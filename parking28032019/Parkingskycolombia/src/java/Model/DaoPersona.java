
package Model;

import Controller.Beans.Persona;
import Util.ConexionSKY;
import Util.interfaceCRUD2;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Usuario
 */
public class DaoPersona extends ConexionSKY implements interfaceCRUD2{
    public Connection conn =null;
    public Statement st=null;
    public ResultSet rs=null;
    public boolean encontrado =false;
    public boolean listo=false;
    
    public String idP="";
    public String nomP="";
    public String apeP="";
    public String docP="";
    public String telP="";
    public String corP="";
    public String pasP="";
    public String rolP="";
    
      public DaoPersona(Persona OPersona){
    super();
          try {
             
              conn = this.ObtenerConexion();
              st = conn.createStatement();
              idP=OPersona.getdPersona();
              nomP=OPersona.getnPersona();
              apeP=OPersona.getaPersona();
              docP=OPersona.getuPersona();
              telP=OPersona.getpPersona();
              corP=OPersona.gettPersona();
              pasP=OPersona.getyPersona();
              rolP=OPersona.getqPersona();

          } catch (SQLException ex) {
              Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE, null, ex);
          }
      }   
      
      public DaoPersona (){
          try {
              conn = this.ObtenerConexion();
              st = conn.createStatement();

              idP = "";
              nomP = "";
              apeP = "";
              docP = "";
              telP= "";
              corP= "";
              pasP = "";
              rolP= "";
          } catch (SQLException ex) {
                Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE, null,ex);
          }

}
  
    @Override
      public boolean agregarRegistroUsuario(){
        
      try{
        // Consulta del tipo de documento y su descripcón
        //rt=st.executeQuery("Select idTipoDocumento from tipoDocumento where descripcionTipoDocumento='"+tipP+"';");
      //rt.next();
      //String IdTipoDocumento1=rt.getString(1);
      
      //Guardar registros en la tabla Persona
      
st.executeUpdate("Insert into registro_usuario values ('"+idP+"',"+nomP+"','"+apeP+"','"+docP+"','"+corP+"','"+telP+"','"+pasP+"','"+rolP+"';");
      listo=true;
      this.CerrarConexion();
      }catch(SQLException ex){
      Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE,null,ex);
      
      }
       return listo;
      
      }
      
    @Override
      public ResultSet consultarRegistroUsuario() { // Consulta de Registro método del tipo ResultSet
         try {        
         rt = st.executeQuery("SELECT p.id_Registro_Usuario, p.Nombre_Usuario, p.Apellido_Usuario,p.Identificacion_Usuario,p.Telefono_Usuario,p.Correo_Usuario,p.Contraseña_Usuario,p.Rol_Usuario, FROM persona p JOIN tipoDocumento t ON t.idTipoDocumento= p.idTipoDocumento WHERE p.docPersona='"+idP+"';");
        } catch (SQLException ex) {
            Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE, null, ex);
        }
         return rt;
    }
      
      
    @Override
      public boolean actualizarRegistroUsuario(){
      try{
       // Consultar El tipo de documento y la descripción
      //rt=st.executeQuery("Select idTipoDocumento from tipoDocumento where descripcionTipoDocumento='"+tipP+"';");
       rt.next();
      String idTipoDocumento=rt.getString(1);
      //Bloque de código para actualizar registros en SIGEP 
      st.executeUpdate("update registro_usuario set id_Registro_Usuario='"+idP +"',Nombre_Usuario='"+nomP+"',Apellido_Usuario='"+apeP+"',Identificacion_Usuario='"+ docP+"',Telefono_Usuario='"+telP+"',Correo_Usuario='"+corP+"',Contraseña_Usuario='"+pasP+"',Rol_Usuario='"+rolP+"'   where id_Registro_Usuario='"+ idP+"'");
      listo=true;
      this.CerrarConexion();
      
      }catch(SQLException ex){
          Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE,null ,ex);
   
      }
 
      return listo ;
      }
      
    //@Override
      //  public ResultSet consultarDescripcionTD() {
        // try {        
          //  rt = st.executeQuery("SELECT descripcionTipoDocumento FROM tipoDocumento;");
            //this.CerrarConexion();   
        //} catch (SQLException ex) {
          //  Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE, null, ex);
       // }
         //return rt;
   // }

    @Override
    public ResultSet consultarDescripcionTDUsuario() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
        
} //Finalización de la clase DaoPersona
