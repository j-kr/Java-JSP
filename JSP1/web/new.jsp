<%-- 
    Document   : new
    Created on : 2017-10-26, 19:49:53
    Author     : Jakub
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Twoja wizytówka</title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
        
        

        <%
            String imie = request.getParameter("imie");
            String nazwisko = request.getParameter("Nazwisko");
            String telefon = request.getParameter("Telefon");
            String email = request.getParameter("Email");
            String czcionkaRozmiar = request.getParameter("czcionka");
            String rodzajCzcionka = request.getParameter("rodzaj");
            String schemat = request.getParameter("schemat");
        %>
        
        
        
        
        
        <div style="font-size: <%=czcionkaRozmiar%>; font-family: <%=rodzajCzcionka%>"id="<%=schemat%>">
            <p><%=imie %></p>
            <p><%=nazwisko %></p>
            <p><%=telefon %></p>
            <p><%=email %></p> 
        </div>
        
    </body>
</html>