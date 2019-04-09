
package Model;

import Controller.Beans.Vehiculo;
import Util.ConexionSKY;
import Util.interfaceCRUD1;
import java.sql.Connection;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DaoVehiculo extends ConexionSKY implements interfaceCRUD1{
    public Connection conn1 =null;
    public Statement st1=null;
    public ResultSet rs1=null;
    public boolean encontrado1 =false;
    public boolean listo1=false;
    
    public String idvehP="";
    public String modvehP="";
    public String colvehP="";
    public String plavehP="";
    public String marveP="";
    public String tipveP="";
    public String estveP="";
    
    
      public DaoVehiculo(Vehiculo OVehiculo){
    super();
          try {
             
              conn1 = this.ObtenerConexion();
              st1 = conn1.createStatement();
              idvehP=OVehiculo.getdVehiculo();
              modvehP=OVehiculo.getnVehiculo();
              colvehP=OVehiculo.getaVehiculo();
              plavehP=OVehiculo.getuVehiculo();
              marveP=OVehiculo.getpVehiculo();
              tipveP=OVehiculo.gettVehiculo();
              estveP=OVehiculo.getyVehiculo();
              

          } catch (SQLException ex) {
              Logger.getLogger(DaoVehiculo.class.getName()).log(Level.SEVERE, null, ex);
          }
      }   
      
      public DaoVehiculo (){
          try {
              conn1 = this.ObtenerConexion();
              st1 = conn1.createStatement();
              idvehP="";
              modvehP="";
              colvehP="";
              plavehP="";
              marveP="";
              tipveP="";
              estveP="";
              
              
          } catch (SQLException ex) {
                Logger.getLogger(DaoVehiculo.class.getName()).log(Level.SEVERE, null,ex);
          }

}
  
    @Override
      public boolean agregarRegistroVehiculo(){
        
      try{
        // Consulta del tipo de documento y su descripcón
        //rt=st.executeQuery("Select idTipoDocumento from tipoDocumento where descripcionTipoDocumento='"+tipP+"';");
      //rt.next();
      //String IdTipoDocumento1=rt.getString(1);
      
      //Guardar registros en la tabla Vehiculo
      
    
st1.executeUpdate("Insert into registro_vehiculo values ('"+idvehP+"',"+modvehP+"','"+colvehP+"','"+plavehP+"','"+marveP+"','"+tipveP+"','"+estveP+"';");
      listo1=true;
      this.CerrarConexion();
      }catch(SQLException ex){
      Logger.getLogger(DaoVehiculo.class.getName()).log(Level.SEVERE,null,ex);
      
      }
       return listo1;
      
      }
      
    @Override
      public ResultSet consultarRegistroVehiculo() { // Consulta de Registro método del tipo ResultSet
         try {        
              rt1 = st1.executeQuery("SELECT p.id_Registro_Vehiculo, p.Modelo_Vehiculo, p.Color_Vehiculo,p.Placa_Vehiculo,p.Marca_Vehiculo,p.Tipo_Vehiculo,p.Estado_Vehiculo FROM Vehiculo ;");
        } catch (SQLException ex) {
            Logger.getLogger(DaoVehiculo.class.getName()).log(Level.SEVERE, null, ex);
        }
         return rt1;
    }
      
      
    @Override
      public boolean actualizarRegistroVehiculo(){
      try{
       // Consultar El tipo de documento y la descripción
      //rt=st.executeQuery("Select idTipoDocumento from tipoDocumento where descripcionTipoDocumento='"+tipP+"';");
       rt1.next();
      //String idTipoDocumento=rt.getString(1);
      //Bloque de código para actualizar registros en SIGEP 
      st1.executeUpdate("update registro_vehiculo set id_Registro_Vehiculo='"+idvehP+"',Modelo_Vehiculo='"+modvehP+"',Color_Vehiculo='"+colvehP+"',Placa_Vehiculo='"+ plavehP+"',Marca_Vehiculo='"+marveP+"',Tipo_Vehiculo='"+tipveP+"',Estado_Vehiculo='"+estveP+"'");
      listo1=true;
      this.CerrarConexion();
      
      }catch(SQLException ex){
          Logger.getLogger(DaoVehiculo.class.getName()).log(Level.SEVERE,null ,ex);
   
      }
 
      return listo1 ;
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

    /**
     *
     * @return
     */
   
    @Override
    public ResultSet consultarDescripcionTDVehiculo() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
