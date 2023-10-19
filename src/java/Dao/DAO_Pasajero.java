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
}
