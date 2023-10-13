<%-- 
    Document   : cat
    Created on : 11/10/2023, 6:25:14 p. m.
    Author     : mh684
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="poo.Felino"%>
<%@ page import="java.util.ArrayList" %>
<%
    String nombre = request.getParameter("nombre");
    String raza = request.getParameter("raza");
    String color = request.getParameter("color");
    int edad = Integer.parseInt(request.getParameter("edad"));
    String tieneParasitos = request.getParameter("parasitos").toLowerCase();
    boolean tox=false;
    if (tieneParasitos.equals("si")){
        tox=true;
    }

    ArrayList<Object> felinos = (ArrayList<Object>) session.getAttribute("felinos");

    if (felinos == null ) {
        felinos = new ArrayList<>();
        session.setAttribute("felinos", felinos);
    }
  
    felinos.add(new Felino(tox,nombre,raza,color,edad));
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro Exitoso</title>
    </head>
    <body>
        <h2>Registro de Felino Exitoso</h2>
        <a href="index.html">Volver al Inicio</a>
    </body>
</html>
