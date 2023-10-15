
package Dao;

import Modelo.User;
import java.sql.SQLException;

public class DAO_User extends Conexion{
    public DAO_User(){}
    
    public User VerificarUsuario(User user) throws Exception{
        User u=null;
        
        String sql = "SELECT * FROM usuario WHERE users=? AND clave=?";
        
        try {
            pst = cn.prepareStatement(sql);
            pst.setString(1, user.getUsers());
            pst.setString(2, user.getClave());
            rs = pst.executeQuery();
            
            if(rs.next()){
                u = new User();
                u.setIdUsuario(rs.getString (1));
                u.setUsers(rs.getString (2));
                u.setClave  ( rs.getString (3));
                u.setRol(rs.getString (4));
                u.setActivo(rs.getBoolean("activo"));
            }
        } catch (SQLException e) {
            System.out.println("Error al comprobar\n"+e);
        }
        return u;
    }
}
