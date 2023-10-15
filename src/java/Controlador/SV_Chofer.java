/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Dao.DAO_Chofer;
import Modelo.Chauffeur;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jhordancotrina
 */
@WebServlet(name = "SV_Chofer", urlPatterns = {"/SV_Chofer"})
public class SV_Chofer extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String accion = request.getParameter("accion");

        try {
            switch (accion) {
                case "insertChau":
                    InsertChau(request, response);
                    break;
                case "modificarChau":
                    UpdateChau(request, response);
                    break;
                case "updateStatuChau":
                    updateStatusChau(request, response);
                    break;

                default:
                    response.sendRedirect("/pages/sign-in.jsp");
            }
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
        }

    }

    private void UpdateChau(HttpServletRequest request, HttpServletResponse response) {

        try {
            DAO_Chofer daochau = new DAO_Chofer();

            int idConductor = Integer.parseInt(request.getParameter("choferId"));
            String nombre = request.getParameter("name");
            String apellido = request.getParameter("lastname");
            String dni = request.getParameter("dni");
            String telefono = request.getParameter("phonenumber");
            String nroLicencia = request.getParameter("license");
            String fechaContratacion = request.getParameter("fechaEmpleado");
            String observacion = request.getParameter("review");
            boolean activo = "activo".equals(request.getParameter("status"));

            //Convert Format Normal to MySQL
            SimpleDateFormat formatForm = new SimpleDateFormat("dd/MM/yyyy");
            SimpleDateFormat formatMySQL = new SimpleDateFormat("yyyy-MM-dd");
            Date fecha = formatForm.parse(fechaContratacion);
            String fechaMySQL = formatMySQL.format(fecha);

            Chauffeur updatechauff = new Chauffeur();
            updatechauff.setIdChauf(idConductor);
            updatechauff.setName(nombre);
            updatechauff.setLastname(apellido);
            updatechauff.setDni(dni);
            updatechauff.setPhone(telefono);
            updatechauff.setNmbrLicense(nroLicencia);
            updatechauff.setDate(fechaMySQL);
            updatechauff.setReview(observacion);
            updatechauff.setCondition(activo);

            Chauffeur conductorActualizado = daochau.UpdateDriver(updatechauff);

            if (conductorActualizado != null) {
                // El conductor se actualizó con éxito
                response.sendRedirect("/AvanceProject-1/pages/tables.jsp");
            }

        } catch (Exception ex) {
            System.out.println("Error al Actualizar: " + ex.getMessage());
        }

    }

    private void updateStatusChau(HttpServletRequest request, HttpServletResponse response) {
        int idChau = Integer.parseInt(request.getParameter("chauId")); // Asegúrate de que coincida con el nombre del campo en tu formulario

        try {
            // Crea una instancia de la clase DAO_Chofer
            DAO_Chofer daoChauffr = new DAO_Chofer();

            // Llama al método para actualizar el estado del conductor
            boolean actualizacionExitosa = daoChauffr.UpdateDriverStatus(idChau, false);

            if (actualizacionExitosa) {
                // La actualización fue exitosa
                response.sendRedirect("/AvanceProject-1/pages/tables.jsp");
            }
        } catch (Exception ex) {
            System.out.println("Error al actualizar el estado del conductor: " + ex.getMessage());
        }
    }

    private void InsertChau(HttpServletRequest request, HttpServletResponse response) {
        // Obtener los datos del formulario de inserción
        String nombreChofer = request.getParameter("name");
        String apellidoChofer = request.getParameter("lastname");
        String DNI = request.getParameter("dni");
        String telefonoChofer = request.getParameter("phonenumber");
        String nroLicencia = request.getParameter("license");
        String fechContratacion = request.getParameter("fechaEmpleado");
        String observacionChofer = request.getParameter("review");
        boolean activo = "activo".equals(request.getParameter("status")); // Convertir a booleano

        try {
            // Crear una instancia de DAO_Chofer
            DAO_Chofer daoChauffr = new DAO_Chofer();

            //Convert Format Normal to MySQL
            SimpleDateFormat formatForm = new SimpleDateFormat("dd/MM/yyyy");
            SimpleDateFormat formatMySQL = new SimpleDateFormat("yyyy-MM-dd");
            Date fecha = formatForm.parse(fechContratacion);
            String fechaMySQL = formatMySQL.format(fecha);

            // Crear un objeto Chauffeur con los datos del formulario
            Chauffeur chf = new Chauffeur();
            chf.setName(nombreChofer);
            chf.setLastname(apellidoChofer);
            chf.setDni(DNI);
            chf.setPhone(telefonoChofer);
            chf.setNmbrLicense(nroLicencia);
            chf.setDate(fechaMySQL);
            chf.setReview(observacionChofer);
            chf.setCondition(activo);

            // Llamar al método InsertDriver para insertar el nuevo conductor
            Chauffeur conductorInsertado = daoChauffr.InsertDriver(chf);

            if (conductorInsertado != null) {
                // La inserción fue exitosa
                response.sendRedirect("/AvanceProject-1/pages/tables.jsp");
            }
        } catch (Exception ex) {
            System.out.println("Error al insertar el conductor: " + ex.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
