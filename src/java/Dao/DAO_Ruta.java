package Dao;

import Modelo.Ruta;
import java.util.ArrayList;
import java.util.List;

public class DAO_Ruta extends Conexion {

    public DAO_Ruta() {
    }

    public List<Ruta> ListarRutas() {
        List<Ruta> rutas = new ArrayList<>();
        String requestSql = "SELECT * FROM ruta WHERE activo = 1";

        try {
            pst = cn.prepareStatement(requestSql);
            rs = pst.executeQuery();

            while (rs.next()) {
                Ruta rt = new Ruta();
                rt.setIdRuta(rs.getInt("idRuta"));
                rt.setNombreRuta(rs.getString("nombreRuta"));
                rt.setDescripcionRuta(rs.getString("descripcionRuta"));
                rt.setDistanciaRecorrido(rs.getInt("distanciaRecorrido"));
                rt.setTiempoRecorrido(rs.getInt("tiempoRecorrido"));
                rt.setObservacionesRuta(rs.getString("observacionRuta"));
                rt.setActivo(rs.getBoolean("activo"));

                rutas.add(rt);
            }
        } catch (Exception ex) {
            System.out.println("Error al mostrar\n" + ex);
        }
        return rutas;
    }

    public Ruta ObtenerRuta(int id) {
        String sqlconsulta = "SELECT * FROM Ruta WHERE idRuta=?";
        
        Ruta rt = new Ruta();

        try {
            pst = cn.prepareStatement(sqlconsulta);
            rs = pst.executeQuery();

            if (rs.next()) {
                rt.setIdRuta(rs.getInt("idRuta"));
                rt.setNombreRuta(rs.getString("nombreRuta"));
                rt.setDescripcionRuta(rs.getString("descripcionRuta"));
                rt.setDistanciaRecorrido(rs.getInt("distanciaRecorrido"));
                rt.setTiempoRecorrido(rs.getInt("tiempoRecorrido"));
                rt.setObservacionesRuta(rs.getString("observacionRuta"));
                rt.setActivo(rs.getBoolean("activo"));
            }
        } catch (Exception ex) {
            System.out.println("Error al mostrar\n" + ex);
        }
        return rt;
    }

    public boolean AgregarRuta(Ruta rt) {
        String sqlinsert = "INSERT INTO Ruta (nombreRuta, descripcionRuta, distanciaRecorrido, tiempoRecorrido, observacionRuta, activo) VALUES (?,?,?,?,?,?,1)";

        try {
            cn = conexion.getConnection();
            ps = cn.prepareStatement(sqlinsert);
            ps.setString(1, rt.getNombreRuta());
            ps.setString(2, rt.getDescripcionRuta());
            ps.setInt(3, rt.getDistanciaRecorrido());
            ps.setInt(4, rt.getTiempoRecorrido());
            ps.setString(5, rt.getObservacionRuta());
            ps.executeUpdate();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error al insertar la ruta: " + ex);
        }
        return true;
    }

    public boolean EditarRuta(Ruta rt) {
        String sqlupdate = "UPDATE Ruta SET nombreRuta=?, descripcionRuta=?, distanciaRecorrido=?, tiempoRecorrido=?, observacionRuta=?, activo=? WHERE idRuta=?";

        try {
            cn = conexion.getConnection();
            ps = cn.prepareStatement(sqlupdate);
            ps.setString(1, rt.getNombreRuta());
            ps.setString(2, rt.getDescripcionRuta());
            ps.setInt(3, rt.getDistanciaRecorrido());
            ps.setInt(4, rt.getTiempoRecorrido());
            ps.setString(5, rt.getObservacionRuta());
            ps.setBoolean(6, rt.isActivo());
            ps.setInt(7, rt.getIdRuta());
            ps.executeUpdate();
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Error al actualizar la ruta: " + ex);
        }
        return true;
    }

    public boolean EliminarRuta(int id) {
        String sqleliminar = "UPDATE Ruta SET activo = 0 WHERE idRuta=?";

        try {
            cn = conexion.getConnection();
            ps = cn.prepareStatement(sqleliminar);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Error al eliminar la ruta: " + ex);
        }
        return true;
    }

}
