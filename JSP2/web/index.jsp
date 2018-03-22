<%-- 
    Document   : index
    Created on : 2017-10-26, 21:22:21
    Author     : Jakub
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Tabliczka Mnożenia</title>
    </head>
    <body>
        <h2>Tabliczka Mnożenia</h2><br>
        <form name="MyForm" action="" method="POST" >
            
                <tbody>
                    <tr>
                        
                        <td>Ilość wierszy: </td><br>
                        <td><input type="text" name="Wiersze" value="" size="15" required /></td><br><br>
                    </tr>
                    
                    
                    <tr>
                        <td>Ilość kolumn: </td><br>
                        <td><input type="text" name="Kolumny" value="" size="15" required /></td><br>
<!--                        <label>Kolor Wiersza</label>
                        <select name="wiersz">
                            <option value="green">zielony</option>
                            <option value="red">czerwony</option>
                            <option value="blue">niebieski</option>
                        </select>
                        <label>  Kolor Kolumny</label>
                        <select name="kolumna">
                            <option value="green">zielony</option>
                            <option value="red">czerwony</option>
                            <option value="blue">niebieski</option>
                        </select>-->
                    </tr>
                </tbody>
            
            </br>
            <input type="submit" value="Generuj" name="generuj" />
            <input type="checkbox" name="selected" value="hole"> 
            <p></p>

            <%
                if (request.getParameter("generuj") != null) {
                    
                    String x = request.getParameter("Wiersze");
                    Integer wiersze = Integer.parseInt(x);
                    
                    String y = request.getParameter("Kolumny");
                    Integer kolumny = Integer.parseInt(y);  
                    
//                    String wk = request.getParameter("wiersz");
//                    String kk = request.getParameter("kolumna");
                    Integer num1 = 0;
                    Integer num2 = 0;
                    
                    
                    List<Integer> List = new ArrayList<Integer>();
                    
                    
                    Random r = new Random();
                    int fifty;
                    Random xxx = new Random();
                 
                    if (wiersze <= 0 || kolumny <= 0) {
                        out.print("Wprowadź poprawne liczby!");
                    } else {%>
<!--            <table>
                <tr>
                    <th></th>
                        <%for (int i = 1; i <= kolumny; i++) {
                        num1 = r.nextInt(kolumny)+1;
                        List.add(num1);
                        %>
                    <th><%= num1%></th>
                        <%  }  %>
                </tr>
                <%for (int j = 1; j <= wiersze; j++) {
                    num2 = r.nextInt(wiersze)+1;
                       
                %>
                <tr>
                    <th><%= num2%></th>
                        <%for (int i = 1; i <= kolumny; i++) {
                                %>
                    <td><%= List.get(i-1) * num2%></td>
                    <% 
                        }%>
                </tr>
                <%}%>
            </table>-->
                
                
<table>
<tr>
    <th>y\x</th>
        <% for (int a = 1; a <= kolumny; a++) { %>
            <th><%=a%></th>
        <%}%>     
</tr>

<% for (int b = 1; b <= wiersze; b++) { %>
    <tr>
    <th><%=b%></th>    
        <%for (int c = 1; c <= kolumny; c++) { %>   
            <td>
                <%
                    if( request.getParameterValues("selected") != null){
                        
                        
                    
                       
                    fifty = xxx.nextInt(2);
                    
                    if( fifty == 1 ){
                    out.print(b*c);}
                }
                else{
                        out.print(b*c);}
        %>
            </td>
        <%}%> 
    </tr>    
<%}%> 
</table>
<%   }    }  %>
        </form>
    </body>
</html>

