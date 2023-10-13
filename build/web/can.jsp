<%-- 
    Document   : can
    Created on : 11/10/2023, 6:02:48 p. m.
    Author     : mh684
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="poo.Canino"%>
<%@ page import="java.util.ArrayList" %>
<%
    String nombre = request.getParameter("nombre");
    String raza = request.getParameter("raza");
    String color = request.getParameter("color");
    int edad = Integer.parseInt(request.getParameter("edad"));
    int entrenamiento = Integer.parseInt(request.getParameter("entrenamiento"));

    ArrayList<Object> caninos = (ArrayList<Object>) session.getAttribute("caninos");

    if (caninos == null ) {
        caninos = new ArrayList<>();
        session.setAttribute("caninos", caninos);
    }

    caninos.add(new Canino(entrenamiento,nombre,raza,color,edad));
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro Exitoso</title>
    </head>
    <body>
        <h2>Registro de Canino Exitoso</h2>
        <p>El animal ha sido agregado a la lista.</p>
        <a href="index.html">Volver al Inicio</a>
    </body>
</html>
