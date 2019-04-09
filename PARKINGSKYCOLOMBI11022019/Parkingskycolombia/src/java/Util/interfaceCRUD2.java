
package Util;

import java.sql.ResultSet;


public interface interfaceCRUD2 {
    public abstract boolean agregarRegistro();
    public abstract ResultSet consultarRegistro();
    public abstract boolean actualizarRegistro();
    public abstract ResultSet consultarDescripcionTD();
}
