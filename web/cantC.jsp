<%-- 
    Document   : cantC
    Created on : 13/10/2023, 5:46:57 p. m.
    Author     : mh684
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="poo.Canino"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<Canino> caninos = (ArrayList<Canino>) session.getAttribute("caninos");
            int cant;
            if (caninos != null) {
            cant=caninos.size();
        %>
               <h1>Cantidad de caninos: </h1><p><%=cant%></p> 
        <%
            } else {
        %>
                <p>No se han agregado caninos todavía.</p>
        <%
            }
        %>
            
          <a href="index.html">Volver al formulario</a>  
    </body>
</html>
