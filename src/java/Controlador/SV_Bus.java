/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Bus;
import Dao.DAO_Buses;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jhordancotrina
 */
@WebServlet(name = "SV_Bus", urlPatterns = {"/SV_Bus"})
public class SV_Bus extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        try {
            switch (accion) {
                case "insertBus":
                    InsertBus(request, response);
                    break;
                case "modificarBus":
                    UpdateBus(request, response);
                    break;
                case "updateStatusBus":
                    UpdateStatusBus(request, response);
                    break;

                default:
                    response.sendRedirect("/pages/sign-in.jsp");
            }
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
        }
    }

    private void InsertBus(HttpServletRequest request, HttpServletResponse response) {
        // Recoge los datos del formulario
        String marcaBus = request.getParameter("marca");
        String modeloBus = request.getParameter("modelo");
        String color = request.getParameter("Color");
        String nroPlaca = request.getParameter("plate");
        String condicionBus = request.getParameter("condition");
        int aforoMaximo = Integer.parseInt(request.getParameter("maxForoI"));
        int aforoMinimo = Integer.parseInt(request.getParameter("minForoI"));
        String statusValue = request.getParameter("status");
        boolean activo = "activo".equals(statusValue);

        try {
            // Crea una instancia de la clase DAO_Bus
            DAO_Buses daoBus = new DAO_Buses();

            // Llama al método para insertar un nuevo autobús
            boolean insercionExitosa = daoBus.InsertBus(marcaBus, modeloBus, color, nroPlaca, condicionBus, aforoMaximo, aforoMinimo, activo);

            if (insercionExitosa) {
                // La inserción fue exitosa
                response.sendRedirect("/AvanceProject-1/pages/tables.jsp");
            } 
        } catch (Exception ex) {
            // Maneja cualquier excepción que pueda ocurrir
            ex.printStackTrace(); // Puedes redirigir a una página de error aquí
        }
    }

    private void UpdateBus(HttpServletRequest request, HttpServletResponse response) {

        int idBus = Integer.parseInt(request.getParameter("BusId"));
        String marcaBus = request.getParameter("marca");
        String modeloBus = request.getParameter("modelo");
        String color = request.getParameter("Color");
        String nroPlaca = request.getParameter("plate");
        String condicionBus = request.getParameter("condition");
        int aforoMaximo = Integer.parseInt(request.getParameter("maxForo"));
        int aforoMinimo = Integer.parseInt(request.getParameter("minForo"));
        boolean activo = Boolean.parseBoolean(request.getParameter("status"));

        // Crea un objeto Bus con los datos del formulario
        Bus bus = new Bus();
        bus.setIdBus(idBus);
        bus.setBusMar(marcaBus);
        bus.setBusModel(modeloBus);
        bus.setBusColor(color);
        bus.setNmbrPlate(nroPlaca);
        bus.setCondition(condicionBus);
        bus.setAfMaxim(aforoMaximo);
        bus.setAfMin(aforoMinimo);
        bus.setStatus(activo);

        // Llama al método UpdateBus del DAO para actualizar el registro del autobús
        DAO_Buses daoBus = new DAO_Buses();

        try {
            Bus updatedBus = daoBus.UpdateBus(bus);
            if (updatedBus != null) {
                response.sendRedirect("/AvanceProject-1/pages/tables.jsp");
            }
        } catch (Exception e) {
            // Maneja errores, muestra un mensaje de error o redirecciona a una página de error.
            e.printStackTrace();
        }
    }

    private void UpdateStatusBus(HttpServletRequest request, HttpServletResponse response) {
        int idBus = Integer.parseInt(request.getParameter("busId"));
        try {

            DAO_Buses daoBss = new DAO_Buses();

            // Llamar al método DeleteDriver para eliminar al conductor
            boolean eliminacionSucces = daoBss.UpdateStatusBus(idBus, false);

            if (eliminacionSucces) {
                // La eliminación fue exitosa
                response.sendRedirect("/AvanceProject-1/pages/tables.jsp");

            }
        } catch (Exception ex) {
            System.out.println("Error al Borrar: " + ex.getMessage());

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
