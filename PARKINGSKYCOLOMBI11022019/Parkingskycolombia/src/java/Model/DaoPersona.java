
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
    public String tipP="";
    public String ideP="";
    public String telP="";
    public String corP="";
    public String usuP="";
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
              tipP=OPersona.getuPersona();
              ideP=OPersona.getpPersona();
              telP=OPersona.gettPersona();
              corP=OPersona.getyPersona();
              usuP=OPersona.getqPersona();
              pasP=OPersona.getiPersona();
              rolP=OPersona.getoPersona();

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
              tipP = "";
              ideP = "";
              telP= "";
              corP= "";
              usuP = "";
              pasP = "";
              rolP= "";
          } catch (SQLException ex) {
                Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE, null,ex);
          }

}
  
    @Override
      public boolean agregarRegistro(){
        
      try{
        // Consulta del tipo de documento y su descripcón
        rt=st.executeQuery("Select idTipoDocumento from tipoDocumento where descripcionTipoDocumento='"+tipP+"';");
      rt.next();
      String IdTipoDocumento1=rt.getString(1);
      
      //Guardar registros en la tabla Persona
      
st.executeUpdate("insert into registro_usuario values ('"+idP+"',"+nomP+"','"+apeP+"','"+IdTipoDocumento1+"','"+ideP+"','"+telP+"','"+corP+"','"+usuP+"','"+pasP+"','"+rolP+"';");
          
      listo=true;
      this.CerrarConexion();
      }catch(SQLException ex){
      Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE,null,ex);
      
      }
       return listo;
      
      }
      
    @Override
      public ResultSet consultarRegistro() { // Consulta de Registro método del tipo ResultSet
         try {        
         rt = st.executeQuery("SELECT p.id_Registro_Usuario, p.NombreUsuario, p.ApellidoUsuario,p.idTipoDocumento,p.IdentificacionUsuario,p.TelefonoUsuario,p.CorreoUsuario,p.id_UsuarioPersona,p.PasswordPersona,RolUsuario, t.descripcionTipoDocumento FROM persona p JOIN tipoDocumento t ON t.idTipoDocumento= p.idTipoDocumento WHERE p.docPersona='"+idP+"';");
        } catch (SQLException ex) {
            Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE, null, ex);
        }
         return rt;
    }
      
      
    @Override
      public boolean actualizarRegistro(){
      try{
       // Consultar El tipo de documento y la descripción
      rt=st.executeQuery("Select idTipoDocumento from tipoDocumento where descripcionTipoDocumento='"+tipP+"';");
       rt.next();
      String idTipoDocumento=rt.getString(1);
      //Bloque de código para actualizar registros en SIGEP 
      st.executeUpdate("update registro_usuario set idRegistro_Usuario='"+idP +"',NombreUsuario='"+nomP+idTipoDocumento+"',ApellidoUsuario='"+apeP+"',IdentificacionUsuario='"+ ideP+"',TelefonoUsuario='"+telP+"',CorreoUsuario='"+corP+"',id_UsuarioPersona='"+usuP+"',PasswordPersona='"+pasP+"',RolUsuario='"+rolP+"'   where idRegistroUsuario='"+ idP+"'");
      listo=true;
      this.CerrarConexion();
      
      }catch(SQLException ex){
          Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE,null ,ex);
   
      }
 
      return listo ;
      }
      
    @Override
        public ResultSet consultarDescripcionTD() {
         try {        
            rt = st.executeQuery("SELECT descripcionTipoDocumento FROM tipoDocumento;");
            //this.CerrarConexion();   
        } catch (SQLException ex) {
            Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE, null, ex);
        }
         return rt;
    }
        
} //Finalización de la clase DaoPersona
