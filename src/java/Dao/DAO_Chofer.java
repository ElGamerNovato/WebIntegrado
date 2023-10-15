package Dao;

import Modelo.Chauffeur;
import Modelo.User;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO_Chofer extends Conexion {

    public DAO_Chofer() {
    }

    public Chauffeur InsertDriver(Chauffeur chf) throws Exception {
        String requestSql = "INSERT INTO chofer(nombreChofer, apellidoChofer, DNI, telefonoChofer, "
                + "nroLicencia, fechContratacion, observacionChofer, activo) VALUES (?,?,?,?,?,?,?,?)";

        try {
            pst = cn.prepareStatement(requestSql);
            pst.setString(1, chf.getName());
            pst.setString(2, chf.getLastname());
            pst.setString(3, chf.getDni());
            pst.setString(4, chf.getPhone());
            pst.setString(5, chf.getNmbrLicense());
            pst.setString(6, chf.getDate());
            pst.setString(7, chf.getReview());
            pst.setBoolean(8, chf.isCondition());

            // Utiliza executeUpdate() en lugar de executeQuery() para ejecutar una inserción
            int rowsInserted = pst.executeUpdate();

            if (rowsInserted > 0) {
                // La inserción fue exitosa, puedes devolver el objeto chf actualizado si es necesario
                return chf;
            }
        } catch (SQLException e) {
            System.out.println("Error al insertar el conductor: " + e);
        }

        return null;
    }

    public List<Chauffeur> ShowData() {
        List<Chauffeur> chauffeurs = new ArrayList<>();

        String requestSql = "SELECT * FROM chofer WHERE activo = 1";

        try {
            pst = cn.prepareStatement(requestSql);
            rs = pst.executeQuery();

            while (rs.next()) {
                Chauffeur chf = new Chauffeur();
                chf.setIdChauf(rs.getInt("idChofer")); // Asumiendo que el campo "id" es la primera columna
                chf.setName(rs.getString("nombreChofer"));
                chf.setLastname(rs.getString("apellidoChofer"));
                chf.setDni(rs.getString("DNI"));
                chf.setPhone(rs.getString("telefonoChofer"));
                chf.setNmbrLicense(rs.getString("nroLicencia"));
                chf.setPhoto(rs.getString("fotoChofer"));
                chf.setDate(rs.getString("fechContratacion"));
                chf.setReview(rs.getString("observacionChofer"));
                chf.setCondition(rs.getBoolean("activo"));

                chauffeurs.add(chf);
            }

        } catch (Exception e) {
            System.out.println("Error al comprobar\n" + e);
        }

        return chauffeurs;
    }

    public Chauffeur UpdateDriver(Chauffeur chf) {
        String sql = "UPDATE chofer SET nombreChofer=?, apellidoChofer=?, DNI=?, telefonoChofer=?, "
                + "nroLicencia=?, fechContratacion=?, observacionChofer=?, activo=? WHERE idChofer=?";

        try {
            pst = cn.prepareStatement(sql);
            pst.setString(1, chf.getName());
            pst.setString(2, chf.getLastname());
            pst.setString(3, chf.getDni());
            pst.setString(4, chf.getPhone());
            pst.setString(5, chf.getNmbrLicense());
            pst.setString(6, chf.getDate());
            pst.setString(7, chf.getReview());
            pst.setBoolean(8, chf.isCondition());
            pst.setInt(9, chf.getIdChauf()); // Utiliza el ID para identificar el conductor a actualizar
            pst.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error al actualizar el conductor: " + e);
        }

        return chf;
    }

    public boolean UpdateDriverStatus(int idChau, boolean newStatus) {
        String sql = "UPDATE chofer SET activo = ? WHERE idChofer = ?";

        try {
            pst = cn.prepareStatement(sql);
            pst.setBoolean(1, newStatus);
            pst.setInt(2, idChau);
            int rowsUpdated = pst.executeUpdate();

            return rowsUpdated > 0; // Retorna verdadero si se actualizó al menos una fila (éxito)
        } catch (SQLException e) {
            System.out.println("Error al actualizar el estado del conductor: " + e);
            return false; // Hubo un error al actualizar el estado del conductor
        }
    }

}
