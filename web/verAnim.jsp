<%-- 
    Document   : verAnim
    Created on : 11/10/2023, 6:32:42 p. m.
    Author     : mh684
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="poo.Felino"%>
<%@page import="poo.Canino"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Animales</title>
        <link rel="stylesheet" type="text/css" href="anim.css"/>
    </head>
<body>
    <img class="img-0" src="imag/piesito.jpg" alt="">
    <h1>LISTA DE ANIMALES</h1>
    
    <h2>Lista de Caninos</h2>

    <%
        ArrayList<Canino> listaCaninos = (ArrayList<Canino>) session.getAttribute("caninos");

        if (listaCaninos != null && !listaCaninos.isEmpty()) {
    %>
    <ul>
        <%
            for (Canino canino : listaCaninos) {
        %>
         <li><b>Nombre:</b> <%=canino.getNombre()%><br><b>Raza:</b> <%=canino.getRaza()%><br><b>Edad:</b> <%=canino.getEdad()%><br><b>Color:</b> <%=canino.getColor()%><br><b>Nivel de Entrenamiento:</b> <%=canino.getNivelEntrenamiento()%><br></li>
            <%
                }
            %>
    </ul>
    <%
    } else {
    %>
    <p>No se han agregado caninos todavia.</p>
    <%
        }
    %>
    
    <h2>Lista de Felinos</h2>

    <%
        ArrayList<Felino> listaFelinos = (ArrayList<Felino>) session.getAttribute("felinos");

        if (listaFelinos != null && !listaFelinos.isEmpty()) {
    %>
    <ul>
        <%
            for (Felino felino : listaFelinos) {
        %>
        <li><b>Nombre:</b> <%=felino.getNombre()%><br><b>Raza:</b> <%=felino.getRaza()%><br><b>Edad:</b> <%=felino.getEdad()%><br><b>Color:</b> <%=felino.getColor()%><br><b>Toxo:</b> <%=felino.getTieneParasitos()%><br></li>
            <%
                }
            %>
    </ul>
    <%
    } else {
    %>
    <p>No se han agregado felinos todavia.</p>
    <%
        }
    %>

    <a href="index.html">Volver al formulario</a>
    <img class="img-0" src="imag/piesito.jpg" alt="">
    </body>
</html>
