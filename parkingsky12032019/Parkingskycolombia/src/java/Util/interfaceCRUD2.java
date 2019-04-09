
package Util;

import java.sql.ResultSet;


public interface interfaceCRUD2 {
    public abstract boolean agregarRegistroUsuario();
    public abstract ResultSet consultarRegistroUsuario();
    public abstract boolean actualizarRegistroUsuario();
    public abstract ResultSet consultarDescripcionTDUsuario();
    
}
