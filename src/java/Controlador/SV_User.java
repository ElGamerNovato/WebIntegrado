package Controlador;

import Dao.DAO_User;
import Modelo.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.jni.SSLContext;

@WebServlet(name = "SV_Usuario", urlPatterns = {"/SV_Usuario"})

public class SV_User extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String accion = request.getParameter("accion");

        try {
            switch (accion) {
                case "verificar":
                    VerificarLogin(request, response);
                    break;
                case "cerrar":
                    CerrarSesion(request, response);
                    break;

                default:
                    response.sendRedirect("/pages/sign-in.jsp");
            }
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
        }
    }

    private void VerificarLogin(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession sesion;
            DAO_User dao;
            User user = new User();
            user.setUsers(request.getParameter("txtusuario"));
            user.setClave(request.getParameter("txtclave"));

            dao = new DAO_User();

            User u = dao.VerificarUsuario(user);

            if (u != null) {
                // Usuario válido, independientemente del rol
                sesion = request.getSession();
                sesion.setAttribute("usuario", u);
                sesion.setAttribute("admin-name", u.getUsers());
                request.setAttribute("mensaje", "Bienvenido al panel principal");
                this.getServletConfig().getServletContext()
                        .getRequestDispatcher("/pages/dashboard.jsp").forward(request, response);
            } else {
                // Credenciales incorrectas o usuario no encontrado
                request.setAttribute("mensaje", "Credenciales incorrectas");
                request.getRequestDispatcher("/pages/sign-in.jsp").forward(request, response);
            }

        } catch (Exception e) {
            System.out.println("Error al verificar: " + e.getMessage());
        }

    }

    private void CerrarSesion(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession sesion = request.getSession();
            sesion.setAttribute("usuario", null);
            sesion.invalidate();
            response.sendRedirect(request.getContextPath() + "/pages/sign-in.jsp");

        } catch (Exception e) {
            System.out.println("ERROR no se puedo cerrar sesión " + e.getMessage());
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
