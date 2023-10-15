/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/pages/*")
public class AuthenticationFilter implements Filter{
     @Override
    public void init(FilterConfig config) throws ServletException {
        // Puedes inicializar el filtro aquí si es necesario
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        
        HttpSession session = httpRequest.getSession(false);  // No crea una nueva sesión si no existe

        boolean isLoggedIn = (session != null && session.getAttribute("usuario") != null);

        if (isLoggedIn || httpRequest.getRequestURI().endsWith("sign-in.jsp")) {
            // El usuario está autenticado o intenta acceder a la página de inicio de sesión
            chain.doFilter(request, response);  // Permite que la solicitud continúe
        } else {
            // El usuario no está autenticado, redirige a la página de inicio de sesión
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/pages/sign-in.jsp");
        }
    }

    @Override
    public void destroy() {
        // Puedes realizar tareas de limpieza cuando el filtro se destruye
    }
}
