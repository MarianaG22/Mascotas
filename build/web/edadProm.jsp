<%-- 
    Document   : edadProm
    Created on : 13/10/2023, 5:01:49 p. m.
    Author     : mh684
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="poo.Felino"%>
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
            ArrayList<Felino> felinos = (ArrayList<Felino>) session.getAttribute("felinos");
            int sumEdadF=0;
            if (felinos != null && !felinos.isEmpty()) {
        %>
                <ol>
                    <%for (Felino felino : felinos) {%>
                       
                        <%sumEdadF+=felino.getEdad();%>
                    <%}%>
                </ol>
                <%sumEdadF/=felinos.size();%>
                <h1>Promedio de edades felinas: </h1><p><%=sumEdadF%></p>
        <%
            } else {
        %>
                <p>No se han agregado felinos todavía.</p>
        <%
            }
        %>
        
        
        <%
            ArrayList<Canino> caninos = (ArrayList<Canino>) session.getAttribute("caninos");
            int sumEdadC=0;
            if (caninos != null && !caninos.isEmpty()) {
        %>
                <ol>
                    <%for (Canino canino : caninos) {%>
                    
                        <%sumEdadC+=canino.getEdad();%>
                    <%}%>
                </ol>
                <%sumEdadC/=caninos.size();%>
                <h1>Promedio de edades caninas: </h1><p><%=sumEdadC%></p>
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
