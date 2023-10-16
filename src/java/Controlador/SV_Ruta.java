/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Dao.DAO_Ruta;
import Modelo.Ruta;
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
@WebServlet(name = "SV_Ruta", urlPatterns = {"/SV_Ruta"})
public class SV_Ruta extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        response.setContentType("text/html;charset=UTF-8");

        String accion = request.getParameter("accion");

        try {
            switch (accion) {
                case "insertRoad":
                    insertRoad(request, response);
                    break;
                case "modificarRoad":
                    UpdateRoad(request, response);
                    break;
                case "updateStatuRoad":
                    updateStatusRoad(request, response);
                    break;
                default:
                    response.sendRedirect("/pages/sign-in.jsp");
            }
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
        }
    }

    private void insertRoad(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String nombreRuta = request.getParameter("nameruta");
        String descripcionRuta = request.getParameter("description");
        int turno = Integer.parseInt(request.getParameter("idTurno"));
        int distanciaRecorrido = Integer.parseInt(request.getParameter("distancia"));
        int tiempoRecorrido = Integer.parseInt(request.getParameter("time"));
        String observacionRuta = request.getParameter("review");
        boolean activo = "activo".equals(request.getParameter("status"));;

        // Crea una instancia de tu DAO_Ruta
        DAO_Ruta dao = new DAO_Ruta();

        // Crea una instancia de Ruta con los valores proporcionados en la solicitud
        Ruta rt = new Ruta();
        rt.setNombreRuta(nombreRuta);
        rt.setDescripcionRuta(descripcionRuta);
        rt.setIdHorario(turno);
        rt.setDistanciaRecorrido(distanciaRecorrido);
        rt.setTiempoRecorrido(tiempoRecorrido);
        rt.setObservacionesRuta(observacionRuta);
        rt.setActivo(activo);

        // Llama al método para agregar la nueva ruta
        Ruta rutaAgregada = dao.AgregarRuta(rt);

        if (rutaAgregada != null) {
            // La inserción fue exitosa
            response.sendRedirect("/AvanceProject-1/pages/tables.jsp");
        }
    }

    private void UpdateRoad(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idRuta = Integer.parseInt(request.getParameter("rutaId"));
        String nombreRuta = request.getParameter("nameruta");
        String descripcionRuta = request.getParameter("description");
        int idHora = Integer.parseInt(request.getParameter("idTurn"));
        int distanciaRecorrido = Integer.parseInt(request.getParameter("distancia"));
        int tiempoRecorrido = Integer.parseInt(request.getParameter("time"));
        String observacionRuta = request.getParameter("review");
        boolean activo = "activo".equals(request.getParameter("status"));;

        // Crear una instancia de tu DAO_Ruta
        DAO_Ruta dao = new DAO_Ruta();

        // Crear una instancia de Ruta con los nuevos valores
        Ruta rt = new Ruta();

        rt.setIdRuta(idRuta);
        rt.setNombreRuta(nombreRuta);
        rt.setIdHorario(idHora);
        rt.setDescripcionRuta(descripcionRuta);
        rt.setDistanciaRecorrido(distanciaRecorrido);
        rt.setTiempoRecorrido(tiempoRecorrido);
        rt.setObservacionesRuta(observacionRuta);
        rt.setActivo(activo);

        // Llamar al método para editar la ruta
        Ruta rutaActualizada = dao.EditarRuta(rt);

        if (rutaActualizada != null) {
            // La edición fue exitosa           
            response.sendRedirect("/AvanceProject-1/pages/tables.jsp");
        }
    }

    private void updateStatusRoad(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtén los parámetros desde la solicitud
        int idRuta = Integer.parseInt(request.getParameter("rutaId"));

        // Crear una instancia de tu DAO_Ruta
        DAO_Ruta dao = new DAO_Ruta();

        boolean actualizacionExitosa = dao.EliminarRuta(idRuta, false);

        if (actualizacionExitosa) {
            // La actualización fue exitosa
            response.sendRedirect("/AvanceProject-1/pages/tables.jsp");
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
