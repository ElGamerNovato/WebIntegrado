
package Dao;

import java.sql.*;

public class Conexion implements Parametros{
    public Connection cn;
    public PreparedStatement pst;
    public Statement smt;
    public ResultSet rs;
    public String mensaje;
    
    public Conexion(){
        try {
            Class.forName(DRIVER);
            cn = DriverManager.getConnection(url, user, password);
            smt = cn.createStatement();
            mensaje = "Conexion: Ok";
        } catch (Exception e) {
            mensaje = "Error no se puede conectar a la bd\n"+e;
        }
    }
    
    
}
