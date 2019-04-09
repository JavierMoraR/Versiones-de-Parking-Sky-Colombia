package Model;

import Util.ConexionSKY;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Consultas extends ConexionSKY {
 
    public boolean autenticacion (String usuario, String password ){
        PreparedStatement pst= null;
        ResultSet rs= null;
     
        try {
        String consulta = "select * from registro_usuario where id_UsuarioPersona = ? and PasswordPersona = ?";
        pst =getConexion().prepareStatement(consulta);
        pst.setString(1, usuario);
        pst.setString(2, password);
        rs=pst.executeQuery();
        System.out.println("usuario "+usuario);
        System.out.println("password  "+password);
        if(rs.absolute(1)){
            return true;
        }
    }catch (Exception e){
        System.err.println("Error "+e);
        
    }finally{
        try{
            if(getConexion()!= null)getConexion().close();
            if(pst!=null)pst.close();
            if(rs!=null)rs.close();
          }catch (Exception e){
              System.err.println("Error"+e);
          }
    }
    return false;
    }
 //Main utilizado para verificar la conexion a la bd y la existencia de usuario
    
    /*public static void main(String [] args){
        Consultas co= new Consultas();
        System.out.println(co.autenticacion("andres","andres123"));
    }*/
    public boolean registrar ( String documento, String nombre, String apellido,String tipodocumento, String correo, String telefono, String usuario, String password){
    
    PreparedStatement pst=null;
    String consulta1="select count(id_Registro_Usuario) from id";
    String id= consulta1;
    try{
        
        String consulta= "insert into registro_usuario (id_Registro_Usuario, IdentificacionUsuario, NombreUsuario, ApellidoUsuario,idTipoDocumento, CorreoUsuario, TelefonoUsuario, id_UsuarioPersona, PasswordPersona)values(?,?,?,?,?,?,?,?,?)";    
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, id);
            pst.setString(2, documento);
            pst.setString(3, nombre);
            pst.setString(4, apellido);
            pst.setString(5, tipodocumento);
            pst.setString(6, correo);
            pst.setString(7, telefono);
            pst.setString(8, usuario);
            pst.setString(9, password);
       
    
    if(pst.executeUpdate()==1){
        
        return true;
    }
    
    }catch (Exception ex){
        System.err.println("Error" +ex);
    }finally{
        try{
        if (getConexion()!=null)getConexion().close();
        if (pst!= null)pst.close();
        }catch(Exception e){
            System.err.println("Error" +e);
        }
    }return false;
    }
 public boolean consultaid(String id){
        PreparedStatement pst= null;
        ResultSet rs= null;
     
        try {
        String consulta = "select count(id_Registro_Usuario) from id";
        pst =getConexion().prepareStatement(consulta);
        pst.setString(1, id);
        rs=pst.executeQuery();
        System.out.println("id "+id);
        
        if(rs.absolute(1)){
            return true;
        }
    }catch (Exception e){
        System.err.println("Error "+e);
        
    }finally{
        try{
            if(getConexion()!= null)getConexion().close();
            if(pst!=null)pst.close();
            if(rs!=null)rs.close();
          }catch (Exception e){
              System.err.println("Error"+e);
          }
    }
    return false; 
}
  
//Codigo para probar insercion de datos
/*public static void main(String[] args){
        Consultas co= new Consultas();
        System.out.println(co.registrar("6","Jose Luis","Cardona","1","3432","213231", "loquesa@outlook.com","cras","lolo", "123"));
    }*/
}

  
