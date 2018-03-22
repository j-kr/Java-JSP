<%-- 
    Document   : index
    Created on : 2017-10-26, 19:45:26
    Author     : Jakub
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ZAD1</title>
    </head>
    
    <body>
        <fieldset><legend>KREATOR</legend></br></br>
        <form method="post" action="new.jsp"/>
        <label for="imie">Imię:</label>
        <input type="text" name="imie"/></br>
        <label for="Nazwisko">Nazwisko:</label>
        <input type="text" name="Nazwisko"/></br>
        <label for="Telefon">Telefon:</label>
        <input type="text" name="Telefon"/></br>
        <label for="Email">E-mail:</label>
        <input type="text" name="Email"/></br>
        
        <label for="czcionka">Wielkość czcionki:</label>
        <select name="czcionka">
            <option value="10px">Mała</option>
            <option value="20px">Średnia</option>
            <option value="30px">Duża</option>
        </select></br>

        <label for="rodzaj">Rodzaj czcionki:</label>
        <select name="rodzaj">  
            <option value="Comic Sans MS">Comic Sans</option>
            <option value="Times New Roman">Times New Roman</option>
            <option value="Lucida Console">Lucida Console</option>
        </select></br>
        
        <label>Kolor tła</label>
        <select name="schemat">
            <option value="niebieski">Jasny</option>
            <option value="czarny">Ciemny</option>
            <option value="obrazek1">Obrazek 1</option>
            <option value="obrazek2">Obrazek 2</option>
        </select></br></br>
        <input type="submit" class="btn" name="wyslij" value="WYSLIJ">
        </form>
    </fieldset>
       


</body>
</html>