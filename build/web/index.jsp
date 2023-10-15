<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="Connections.*" %>
<%@ page import="Models.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Ventas</title>
</head>
<body>
    <% 
    Conexion con1 = new Conexion();
    ResultSet ListSale = con1.smt.executeQuery("select SUM(total) AS Sum from ventas");    

    double totalSum = 0.0; // Inicializa la variable que almacenará la suma
    
    if (ListSale.next()) {
        totalSum = ListSale.getDouble("Sum"); // Obtiene el valor de la suma
    }
    
    %>
    <h1>La suma total de la columna total es: <%= totalSum %></h1>
</body>
</html>
