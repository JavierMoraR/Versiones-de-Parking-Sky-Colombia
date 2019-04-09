package Model;

import Util.ConexionSKY;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


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
    public boolean registrarUsuario ( String id, String nombre, String apellido,String tipodocumento, String documento, String telefono, String correo,  String password, String rolusuario, String fecharegisusu,String numeapartam, String torre, String modelovehi, String colvehi, String placavehi, String marvehi, String tipovehiculo, String estadovehiculo ){
    
    PreparedStatement pst=null;
    PreparedStatement pst1=null;
    PreparedStatement pst2=null;
    //String consulta1="select count(id_Registro_Usuario) from id";
    //String id= consulta1;
    String id2=id;
    String id3=id;
    try{
        
        String consultaUsuario= "insert into registro_usuario (id_Registro_Usuario, Nombre_Usuario, Apellido_Usuario, Identificacion_Usuario, Telefono_Usuario, Correo_Usuario,  Contraseña_Usuario, Rol_Usuario, Fecha_Registro,Numero_Apartamento, Torre )values(?,?,?,?,?,?,?,?,?,?,?)";    
            pst = getConexion().prepareStatement(consultaUsuario);
            pst.setString(1, id);
            pst.setString(2, nombre);
            pst.setString(3, apellido);
            pst.setString(4, documento);
            pst.setString(5, telefono);
            pst.setString(6, correo);
            pst.setString(7, password);
            pst.setString(8, rolusuario);
            pst.setString(9, fecharegisusu);
            pst.setString(10, numeapartam);
            pst.setString(11, torre);
            
          String consultaUsuario1= "insert into tipo_documento (id_Tipo_Documento, Descripcion_Documento)values(?,?)";   
            pst1 = getConexion().prepareStatement(consultaUsuario1);
            pst1.setString(1, id2);
            pst1.setString(2, tipodocumento);
            
           String consultaUsuario2= "insert into registro_vehiculo (id_Registro_Vehiculo, Modelo_Vehiculo, Color_Vehiculo, Placa_Vehiculo, Marca_Vehiculo, Tipo_Vehiculo, Estado_Vehiculo )values(?,?,?,?,?,?,?)";   
            pst2 = getConexion().prepareStatement(consultaUsuario2);
            pst2.setString(1, id3);
            pst2.setString(2, modelovehi); 
            pst2.setString(3, colvehi); 
            pst2.setString(4, placavehi); 
            pst2.setString(5, marvehi);
            pst2.setString(6, tipovehiculo);
            pst2.setString(7, estadovehiculo);
                      
            
    if(pst.executeUpdate()==1){
        if(pst1.executeUpdate()==1)
        {
            if(pst2.executeUpdate()==1)
            {
                return true; 
            }
           
        }
        
        
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
 public boolean olvicontra (String TipoDocumento,String documento ){ 
        PreparedStatement pst= null;
        ResultSet rs= null;
     
        try {
        String consulta = "select * from tipo_documento where Descripcion_Documento = ?   ";  
        pst =getConexion().prepareStatement(consulta);
        pst.setString(1, TipoDocumento);
        
        String consulta1 = "select * from registro_usuario where Identificacion_Usuario = ? ";
        pst =getConexion().prepareStatement(consulta1);
        pst.setString(1, documento);
        rs=pst.executeQuery();
        System.out.println("Descripcion_Documento "+ TipoDocumento);
        System.out.println("Identificacion_Usuario"+ documento);
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
 public boolean consultaregistro (String documento ){
        PreparedStatement pst= null;
        ResultSet rs= null;
     
        try {
        String consulta = "select * from registro_usuario where Identificacion_Usuario = ?";
        pst =getConexion().prepareStatement(consulta);
        pst.setString(1, documento);
        rs=pst.executeQuery();
        System.out.println("Identificacion_Usuario"+ documento);
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
 
      public boolean actualizarRegistro(){
      try{
       // Consultar El tipo de documento y la descripción
      rt=st.executeQuery("Select idTipoDocumento from tipoDocumento where descripcionTipoDocumento='"+tipP+"';");
       rt.next();
      String idTipoDocumento2=rt.getString(1);
      //Bloque de código para actualizar registros en SIGEP 
      st.executeUpdate("update persona set docPersona='"+idP +"',idTipoDocumento='"+idTipoDocumento2+"',nombrePersona='"+nomP+"',apellidoPersona='"+ apeP+"',usuarioPersona='"+usuP+"',passwordPersona='"+pasP+"'   where docPersona='"+ idP+"'");
      listo=true;
      this.CerrarConexion();
      
      }catch(SQLException ex){
          Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE,null ,ex);
   
      }
 
      return listo ;
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

  
