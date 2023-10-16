package Dao;

import Modelo.Horario;
import Modelo.Ruta;
import java.util.ArrayList;
import java.util.List;

public class DAO_Ruta extends Conexion {

    public DAO_Ruta() {
    }

    public List<Ruta> ListarRutas() {
        List<Ruta> rutas = new ArrayList<>();
        String requestSql = "SELECT rt.idRuta, hr.turno, rt.nombreRuta, rt.descripcionRuta, rt.distanciaRecorrido, rt.tiempoRecorrido, rt.observacionRuta, rt.activo "
                + "FROM ruta rt "
                + "INNER JOIN horario hr ON hr.idHorario = rt.IdHorario "
                + "WHERE rt.activo = 1 "
                + "ORDER BY rt.idRuta";

        try {
            pst = cn.prepareStatement(requestSql);
            rs = pst.executeQuery();

            while (rs.next()) {
                Ruta rt = new Ruta();
                rt.setIdRuta(rs.getInt("idRuta"));
                rt.setTurno(rs.getString("turno"));
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

    public Ruta ObtenerRuta() {
        String sqlconsulta = "SELECT * FROM ruta WHERE idRuta=?";

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

    public Ruta AgregarRuta(Ruta rt) {
        String sqlinsert = "INSERT INTO ruta (idHorario,nombreRuta, descripcionRuta, distanciaRecorrido,"
                + " tiempoRecorrido, observacionRuta, activo) VALUES (?,?,?,?,?,?,?)";

        try {
            pst = cn.prepareStatement(sqlinsert);

            pst.setInt(1, rt.getIdHorario());
            pst.setString(2, rt.getNombreRuta());
            pst.setString(3, rt.getDescripcionRuta());
            pst.setInt(4, rt.getDistanciaRecorrido());
            pst.setInt(5, rt.getTiempoRecorrido());
            pst.setString(6, rt.getObservacionRuta());
            pst.setBoolean(7, rt.isActivo());

            int rowsInserted = pst.executeUpdate();

            if (rowsInserted > 0) {
                // La inserción fue exitosa, puedes devolver el objeto chf actualizado si es necesario
                return rt;
            }

        } catch (Exception ex) {
            System.out.println("Error al agregar\n" + ex);
        }
        return null;
    }

    public Ruta EditarRuta(Ruta rt) {
        String sqlupdate = "UPDATE ruta SET nombreRuta=?, IdHorario=?, descripcionRuta=?, distanciaRecorrido=?, "
                + "tiempoRecorrido=?, observacionRuta=?, activo=? WHERE idRuta=?";

        try {
            pst = cn.prepareStatement(sqlupdate);

            pst.setString(1, rt.getNombreRuta());
            pst.setInt(2, rt.getIdHorario());
            pst.setString(3, rt.getDescripcionRuta());
            pst.setInt(4, rt.getDistanciaRecorrido());
            pst.setInt(5, rt.getTiempoRecorrido());
            pst.setString(6, rt.getObservacionRuta());
            pst.setBoolean(7, rt.isActivo());
            pst.setInt(8, rt.getIdRuta());

            pst.executeUpdate();
        } catch (Exception ex) {
            System.out.println("Error al agregar\n" + ex);
        }
        return rt;
    }

    public List<Horario> obtenerHorarios() {
        List<Horario> horarios = new ArrayList<>();
        String sql = "SELECT idHorario, turno FROM horario"; // Tu consulta SQL

        try {
            pst = cn.prepareStatement(sql);
            rs = pst.executeQuery();

            while (rs.next()) {
                int idHorario = rs.getInt("idHorario");
                String turno = rs.getString("turno");

                Horario horario = new Horario();
                horario.setIdHorario(idHorario);
                horario.setTurno(turno);

                // Agrega la instancia de Horario a la lista
                horarios.add(horario);
            }

        } catch (Exception ex) {
            // Manejo de errores
        }

        return horarios;
    }

    public boolean EliminarRuta(int id, boolean statu) {
        String sqleliminar = "UPDATE ruta SET activo = ? WHERE idRuta=?";

        try {
            pst = cn.prepareStatement(sqleliminar);
            pst.setBoolean(1, statu);
            pst.setInt(2, id);

            int rowsUpdated = pst.executeUpdate();

            return rowsUpdated > 0;

        } catch (Exception ex) {
            System.out.println("Error al agregar\n" + ex);
        }
        return false;
    }

}
