<%-- 
    Document   : cantF
    Created on : 13/10/2023, 5:42:20 p. m.
    Author     : mh684
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="poo.Felino"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<Felino> felinos = (ArrayList<Felino>) session.getAttribute("felinos");
            int cant;
            if (felinos != null) {
            cant=felinos.size();
        %>
               <h1>Cantidad de felinos: </h1><p><%=cant%></p> 
        <%
            } else {
        %>
                <p>No se han agregado felinos todavía.</p>
        <%
            }
        %>  
        
        <a href="index.html">Volver al formulario</a>
    
    
    </body>
</html>
