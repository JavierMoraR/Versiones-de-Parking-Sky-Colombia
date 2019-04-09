
package Util;

import java.sql.ResultSet;


public interface interfaceCRUD1 {
    public abstract boolean agregarRegistroVehiculo();
    public abstract ResultSet consultarRegistroVehiculo();
    public abstract boolean actualizarRegistroVehiculo();
    public abstract ResultSet consultarDescripcionTDVehiculo();
   
}
