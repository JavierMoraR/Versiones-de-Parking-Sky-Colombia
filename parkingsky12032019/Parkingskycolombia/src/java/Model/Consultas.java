package Model;

import Util.ConexionSKY;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Consultas extends ConexionSKY {
 
    public boolean autenticacion (String usuario, String password ){
        PreparedStatement pst= null;
        ResultSet rs= null;
     
        try {
        String consulta = "select * from registro_usuario where Correo_Usuario = ? and Contraseña_Usuario = ?";
        pst =getConexion().prepareStatement(consulta);
        pst.setString(1, usuario);
        pst.setString(2, password);
        rs=pst.executeQuery();
        System.out.println("Correo_Usuario "+usuario);
        System.out.println("Contraseña_Usuario  "+password);
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
    public boolean registrarUsuario ( String id, String nombre, String apellido, String documento, String correo, String telefono, String password, String rolusuario){
    
    PreparedStatement pst=null;
    //String consulta1="select count(id_Registro_Usuario) from id";
    //String id= consulta1;
    
    try{
        
        String consultaUsuario= "insert into registro_usuario (id_Registro_Usuario, Nombre_Usuario, Apellido_Usuario, Identificacion_Usuario, Telefono_Usuario, Correo_Usuario,  Contraseña_Usuario, Rol_Usuario)values(?,?,?,?,?,?,?,?)";    
            pst = getConexion().prepareStatement(consultaUsuario);
            pst.setString(1, id);
            pst.setString(2, nombre);
            pst.setString(3, apellido);
            pst.setString(4, documento);
            pst.setString(5, correo);
            pst.setString(6, telefono);
            pst.setString(7, password);
            pst.setString(8, rolusuario);
            
    
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
 
 public boolean registrarveh ( String idveh, String modveh, String colveh, String plaveh, String marveh, String tipveh, String estveh){
    
    PreparedStatement pst=null;
    //String consulta1="select count(id_Registro_Usuario) from id";
    //String id= consulta1;
    
    try{
        
        String consulta= "insert into registro_vehiculo (id_Registro_Vehiculo, Modelo_Vehiculo, Color_Vehiculo, Placa_Vehiculo, Marca_Vehiculo, Tipo_Vehiculo,  Estado_Vehiculo)values(?,?,?,?,?,?,?)";    
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, idveh);
            pst.setString(1, modveh);
            pst.setString(3, colveh);
            pst.setString(4, plaveh);
            pst.setString(5, marveh);
            pst.setString(6, tipveh);
            pst.setString(7, estveh);
            
            
    
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

  
