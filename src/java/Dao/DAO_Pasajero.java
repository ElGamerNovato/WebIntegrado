/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Modelo.Pasajero;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author crisc
 */
public class DAO_Pasajero extends Conexion{
    
    public DAO_Pasajero(){}
    
    public Pasajero InsertarPasajero(Pasajero psj) throws Exception{
        String requestSql = "Insert into pasajero(nom,  ap, am, dni, "
                + "celular, direccion) values (?,?,?,?,?,?)";
        try{
            pst=cn.prepareStatement(requestSql);
            pst.setString(1, psj.getNom());
            pst.setString(1, psj.getAp());
            pst.setString(1, psj.getAm());
            pst.setString(1, psj.getDNI());
            pst.setString(1, psj.getCelular());
            pst.setString(1, psj.getDireccion());
            
            int rowsInserted = pst.executeUpdate();
            if (rowsInserted>0){
                return psj;
            }
        }catch(SQLException e){
            System.out.println("Error al insertar al pasajero: "+e);
        }
        return null;
    }
    public List<Pasajero> MostrarDatos(){
        List<Pasajero> pasajero = new ArrayList<>();
        String requestSql="select * from pasajero";
        try{
            pst=cn.prepareStatement(requestSql);
            rs=pst.executeQuery();
            while(rs.next()){
                Pasajero psj = new Pasajero();
                psj.setIdPasajero(rs.getInt("idPasajero"));
                psj.setNom(rs.getString("nom"));
                psj.setAp(rs.getString("ap"));
                psj.setAm(rs.getString("am"));
                psj.setDNI(rs.getString("DNI"));
                psj.setCelular(rs.getString("celular"));
                psj.setDireccion(rs.getString("direccion"));
                
                pasajero.add(psj);
            }
        }catch(Exception e){
            System.out.println("Error al comprobar\n"+e);
        }
        return pasajero;
    }
    public Pasajero ActualizarPasajero(Pasajero pasajer) {
        String sql = "update pasajero set nom=?, ap=?, am=?, dni=?, "
                + "celular=?, direccion=? where idPasajero=?";

        try {
            pst = cn.prepareStatement(sql);
            pst.setString(1, pasajer.getNom());
            pst.setString(2, pasajer.getAp());
            pst.setString(3, pasajer.getAm());
            pst.setString(4, pasajer.getDNI());
            pst.setString(5, pasajer.getCelular());
            pst.setString(6, pasajer.getDireccion());
            pst.setInt(9, pasajer.getIdPasajero()); // Utiliza el ID para identificar el conductor a actualizar
            pst.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al actualizar el conductor: " + e);
        }

        return pasajer;
    }
    
    public boolean EliminarPasajero(int idPasajero){
        String sql = "delete from pasajero where idPasajero=?";
        try{
            pst=cn.prepareStatement(sql);
            pst.setInt(1, idPasajero);
            int rowsUpdated = pst.executeUpdate();
            return rowsUpdated>0;
        }catch (SQLException e){
            System.out.println("Error al eliminar el pasajero: "+e);
            return false;
        }
    }
}
