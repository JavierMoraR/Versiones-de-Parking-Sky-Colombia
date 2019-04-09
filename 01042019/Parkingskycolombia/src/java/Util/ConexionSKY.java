package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;


public class ConexionSKY {
        
public String driver;
public String urlbd;
public String usrbd;
public String passbd;

public Connection conn=null;
public Connection conn1=null;
public Statement st=null;
public Statement st1=null;
public  ResultSet rt=null;
public  ResultSet rt1=null;
public Connection conexion;
private Connection con;
    // metodo Constructor para la conexion
    public ConexionSKY(){
        driver="com.mysql.cj.jdbc.Driver";
        usrbd ="root";
        passbd ="123456";
        urlbd="jdbc:mysql://localhost:3306/parking_sky?useTimezone=true&serverTimezone=UTC&useSSL=false";

    ResultSet tabla = null;           
        try
        { 
            
        Class.forName(driver).newInstance();
        conexion=DriverManager.getConnection(urlbd,usrbd,passbd);
        con=DriverManager.getConnection(urlbd, usrbd,passbd);
        System.out.println("Conexion a Base de Datos realizada");
        }
        catch (Exception e){
            System.out.println("Errrrrrror al tratar de abrir la base de Datos"+e);
        }
    }
    public Connection getConexion(){
        return con;
    }
    public Connection ObtenerConexion()
    { return conexion;
    }

    public Connection CerrarConexion() throws SQLException
    { 
      conexion.close();
      conexion = null;
      return conexion;
    }
    public static void main(String[] args) {
        ConexionSKY con =new ConexionSKY();
        
        System.out.println(" "+con);
        
    }

} // fin de la clase
