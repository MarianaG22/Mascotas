<%-- 
    Document   : retirarM
    Created on : 12/10/2023, 11:22:29 p. m.
    Author     : mh684
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="poo.Felino"%>
<%@page import="poo.Canino"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%
    String nombre = request.getParameter("nombre");
    String opcion = request.getParameter("opcion");
    
    
    if (opcion != null && nombre != null) {
    if(opcion.equalsIgnoreCase("gato")){
    ArrayList<Felino> felinos = (ArrayList<Felino>) session.getAttribute("felinos");
        if(felinos !=null){
            for(Felino felino : felinos){
                if(felino.getNombre().equals(nombre)){
                    felinos.remove(felino);
                    break;
                }
            }
        }
    }
    
    if(opcion.equalsIgnoreCase("perro")){
    ArrayList<Canino> caninos = (ArrayList<Canino>) session.getAttribute("caninos");
        if(caninos !=null){
            for(Canino canino : caninos){
                if(canino.getNombre().equals(nombre)){
                    caninos.remove(canino);
                    break;
                }
            }
        }
    }
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminacion exitosa</title>
    </head>
    <body>
        <h1>Mascota eliminada exitosamente</h1>
        <a href="index.html">Volver al Inicio</a>
    </body>
</html>
