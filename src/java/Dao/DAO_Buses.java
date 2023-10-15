/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Modelo.Bus;
import Modelo.Chauffeur;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jhordancotrina
 */
public class DAO_Buses extends Conexion {

    public DAO_Buses() {
    }

    public boolean InsertBus(String marcaBus, String modeloBus, String colorBus,
            String nroPlaca, String condicionBus, int aforoMaximo,
            int aforoMinimo, boolean activo) throws Exception {
        // Define la consulta SQL para la inserción
        String requestSql = "INSERT INTO bus(marcaBus, modeloBus, colorBus, "
                + "nroPlaca, condicionBus, aforoMaximo, aforoMinimo, activo) VALUES (?,?,?,?,?,?,?,?)";

        try {
            // Prepara la consulta SQL
            pst = cn.prepareStatement(requestSql);
            pst.setString(1, marcaBus);
            pst.setString(2, modeloBus);
            pst.setString(3, colorBus);
            pst.setString(4, nroPlaca);
            pst.setString(5, condicionBus);
            pst.setInt(6, aforoMaximo);
            pst.setInt(7, aforoMinimo);
            pst.setBoolean(8, activo);

            // Ejecuta la consulta de inserción
            int rowsAffected = pst.executeUpdate();

            return rowsAffected > 0;
        } catch (SQLException e) {
            System.out.println("Error al insertar en la base de datos: " + e);
            return false; // Retorna false en caso de error
        }
    }

    public List<Bus> ShowBus() {
        List<Bus> bsss = new ArrayList<>();

        String requestSql = "SELECT * FROM bus WHERE activo = 1";

        try {
            pst = cn.prepareStatement(requestSql);
            rs = pst.executeQuery();

            while (rs.next()) {
                Bus bs = new Bus();
                bs.setIdBus(rs.getInt("idBus"));
                bs.setBusMar(rs.getString("marcaBus"));
                bs.setBusModel(rs.getString("modeloBus"));
                bs.setBusColor(rs.getString("colorBus"));
                bs.setNmbrPlate(rs.getString("nroPlaca"));
                bs.setPhoto(rs.getString("fotoBus"));
                bs.setCondition(rs.getString("condicionBus"));
                bs.setAfMaxim(rs.getInt("aforoMaximo"));
                bs.setAfMin(rs.getInt("aforoMinimo"));
                bs.setStatus(rs.getBoolean("activo"));

                bsss.add(bs);
            }
        } catch (Exception e) {
            System.out.println("Error al comprobar\n" + e);
        }

        return bsss;
    }

    public boolean UpdateStatusBus(int idBus, boolean statu) {
        String sql = "UPDATE bus SET activo = ? WHERE idBus = ?";

        try {
            pst = cn.prepareStatement(sql);
            pst.setBoolean(1, statu);
            pst.setInt(2, idBus);

            int rowsUpdated = pst.executeUpdate();

            return rowsUpdated > 0;
        } catch (SQLException e) {
            System.out.println("Error al actualizar el estado del Bus: " + e);
            return false; // Hubo un error al eliminar el registro
        }
    }

    public Bus UpdateBus(Bus bs) throws Exception {
        String sql = "UPDATE bus SET marcaBus=?, modeloBus=?, colorBus=?, "
                + "nroPlaca=?, condicionBus=?, aforoMaximo=?, aforoMinimo=?, activo=? "
                + "WHERE idBus=?";

        try {
            pst = cn.prepareStatement(sql);
            pst.setString(1, bs.getBusMar());
            pst.setString(2, bs.getBusModel());
            pst.setString(3, bs.getBusColor());
            pst.setString(4, bs.getNmbrPlate());
            pst.setString(5, bs.getCondition());
            pst.setInt(6, bs.getAfMaxim());
            pst.setInt(7, bs.getAfMin());
            pst.setBoolean(8, bs.isStatus());
            pst.setInt(9, bs.getIdBus()); // Identificador único para actualizar

            pst.executeUpdate();

        } catch (SQLException e) {
            System.out.println("Error al actualizar el registro de autobús: " + e);
        }

        return bs;
    }

}
