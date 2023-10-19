/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Dao.DAO_Pasajero;
import Modelo.Pasajero;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author crisc
 */
@WebServlet (name="SV_Pasajero", urlPatterns={"/SV_Pasajero"})
public class SV_Pasajero extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SV_Pasajero</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SV_Pasajero at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }catch(Exception e){
            System.out.println("Error:" +e.getMessage());
        }
    }
    
    private void ActualizarPasajero(HttpServletRequest request, HttpServletResponse response){
        try{
            DAO_Pasajero pasaje = new DAO_Pasajero();
            
            int idPasajero = Integer.parseInt(request.getParameter("idPasajero"));
            String nom = request.getParameter("nom");
            String ap = request.getParameter("ap");
            String am = request.getParameter("am");
            String DNI = request.getParameter("DNI");
            String celular = request.getParameter("celular");
            String direccion = request.getParameter("direccion");
            
            Pasajero pa = new Pasajero();
            pa.setIdPasajero(idPasajero);
            pa.setNom(nom);
            pa.setAp(ap);
            pa.setAm(am);
            pa.setDNI(DNI);
            pa.setCelular(celular);
            pa.setDireccion(direccion);
            
            Pasajero pasajeroActualizado = pasaje.ActualizarPasajero(pa);
            
            if(pasajeroActualizado!=null){
                response.sendRedirect("/AvanceProject-1/pages/tables.jsp");
            }
        }catch(Exception e){
            System.out.println("Error al actualizar: "+e.getMessage());
        }
    }

    private void InsertarPasajero(HttpServletRequest request, HttpServletResponse response){
        String nom = request.getParameter("nom");
        String ap = request.getParameter("ap");
        String am = request.getParameter("am");
        String DNI = request.getParameter("DNI");
        String celular = request.getParameter("celular");
        String direccion = request.getParameter("direccion");
        try{
            DAO_Pasajero daopasa = new DAO_Pasajero();
            Pasajero pasa = new Pasajero();
            pasa.setNom(nom);
            pasa.setAp(ap);
            pasa.setAm(am);
            pasa.setDNI(DNI);
            pasa.setCelular(celular);
            pasa.setDireccion(direccion);
            
            Pasajero pasajeroInsertado = daopasa.InsertarPasajero(pasa);
            
            if(pasajeroInsertado!=null){
                response.sendRedirect("/AvanceProject-1/pages/tables.jsp");
            }
        }catch(Exception e){
        System.out.println("Error al insertar pasajero: "+e.getMessage());
    }
    }
    
    private void EliminarPasaj(HttpServletRequest request, HttpServletResponse response){
        int idPasajero = Integer.parseInt(request.getParameter("idPasajero"));
        try{
            DAO_Pasajero pasa = new DAO_Pasajero();
            boolean eliminacionExitosa=pasa.EliminarPasajero(idPasajero);
            if(eliminacionExitosa){
                response.sendRedirect("/AvanceProject-1/pages/tables.jsp");
            }
        }catch(Exception e){
            System.out.println("Error al eliminar al pasajero: "+e);
        }
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
