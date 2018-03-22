<%-- 
    Document   : Check
    Created on : 2017-10-27, 12:42:34
    Author     : Jakub
--%>


<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CheckYourself</title>
    </head>   
    <body style="text-align: center; background-image: url(tlo1.jpg); font-weight: bold;">
        
    <%      Integer X = (int) (Math.random() * 10);
            Integer Y = (int) (Math.random() * 10);
            Integer pkt=0;
            Integer Szansa=3;
            Integer Trudnosc=30;
            Integer rodzaj=0;
            Integer koniec=0;
            Integer dodatek=0;
            
            String[] array = new String[] {"+", "*", "-", "/"};           
            Random r = new Random();          
            rodzaj = r.nextInt(3);
            
            if( Szansa != 0 || Trudnosc != 0){
          out.println("Podaj wynik działania: " + X + array[rodzaj] + Y); 
            //out.println("Podaj wynik działania: " + X + " * " + Y +"<br><br>"); 
                }
            int liczba=0;
            int liczba2=0; 
        
            if(request.getParameter("Wynik?")!=null){
                
                int wartosc=Integer.parseInt(request.getParameter("wartosc"));
                liczba=Integer.valueOf(request.getParameter("liczba"));
                liczba2=Integer.valueOf(request.getParameter("liczba2"));
                pkt=Integer.valueOf(request.getParameter("punkty"));
                dodatek=Integer.valueOf(request.getParameter("dod"));
                Szansa=Integer.valueOf(request.getParameter("szansa"));
                Trudnosc=Integer.valueOf(request.getParameter("poziom"));
                
                int rodzajj=Integer.valueOf(request.getParameter("rodzaj"));
                int wynik = 0;
                wynik=liczba*liczba2;
                
                if (rodzajj == 0){
                    wynik=liczba+liczba2;
                }
                if (rodzajj == 1){
                    wynik=liczba*liczba2;
                }
                if (rodzajj == 2){
                    wynik=liczba-liczba2;
                }
                if (rodzajj == 3){
                    wynik=liczba/liczba2;
                }
                  
                if(wynik == wartosc && Szansa >=1){         
                    out.print("<br><br>");
                            
                    pkt = pkt+1;
                    Trudnosc-=5;
                    dodatek=dodatek+1;
                    //out.print(dodatek);
                    if ((dodatek % 3) == 0)
                    {
                        //Szansa = Szansa +1;
                    }
                          
                            
         
                    out.println("Dobra odpowiedz!<br><br> Szanse (" + Szansa + ") ");
                    out.print("<br><br>");
                    out.print("Punkty (" + pkt + ")");        
                    out.print("<br><br><br>");
                    //out.print("Uwaga! Poziom Trudności wzrasta.");
                             
                }
                
                else if (wynik != wartosc && Szansa >=1){ 
                    out.print("<br><br>");
                    Szansa--;
                    dodatek=0;
                    out.println("Zły wynik!<br><br> Szanse (" + Szansa + ") ");
                    out.print("<br><br>");
                    out.print("Punkty (" + pkt + ")");        
                    out.print("<br><br><br>");
                    //out.print("Nie śpiesz się. Poziom Trudności pozostaje bez zmian.");
                }
                
                if (Trudnosc == 0)
                {
                    dodatek = 0;
                    pkt=0;
                    Szansa=3;
                    Trudnosc=30;
                    koniec=1;
                    
                    out.print("Wygrales!");     
                    out.print("<br><br>");
                   // out.print("Twój wynik to (" + pkt + ") punktów.");
                   out.print("<a href="+'"'+"http://localhost:8080/JSP3/"+'"'+ ">Rozpocznij od nowa!</a>");

                }
                
                else if(Szansa <= 0)
                {
                    pkt=0;
                    dodatek=0;
                    Szansa=3;
                    Trudnosc=30;
                    koniec=1;
                    out.print("Koniec gry!");     
                    out.print("<br><br>");
                    //out.print("Twój wynik to (" + pkt + ") punktów.");
                    //out.print("<FORM>");
                    out.print("<a href="+'"'+"http://localhost:8080/JSP3/"+'"'+ ">Rozpocznij od nowa!</a>");
                   // out.print("</FORM><br>");
                    
                    
                }
                  

                
               
              
           }
            if(koniec != 1 )
                {
           %>
           
   <form name="MyForm" action="" method="POST" >

            <input type="text" name="wartosc" id="foo" required>
            <input type="hidden" value= "<%=X%>" name="liczba">
            <input type="hidden"  value="<%=Y%>" name="liczba2">
            <input type="hidden"  value="<%=pkt%>" name="punkty">
            <input type="hidden"  value="<%=dodatek%>" name="dod">
            <input type="hidden"  value="<%=Szansa%>" name="szansa">
            <input type="hidden"  value="<%=Trudnosc%>" name="poziom">
            <input type="hidden"  value="<%=rodzaj%>" name="rodzaj">
            <input type="submit" value="Generuj" name="Wynik?" id="przycisk" />
                
      </form> 
            <br>
        <span id="sekundy"></span>

        <script type="text/javascript">
             
            o = document.getElementById('sekundy')   
            var x = <%= Trudnosc %>;           
            function odliczaj(o, sek) {   
                o.innerHTML = sek
                if (sek > 0)
                    setTimeout(function () {
                        odliczaj(o, --sek)
                    }, 1e3)
               
               if(sek<=0)
               {
                   document.getElementById("foo").disabled=true;
                   document.getElementById("przycisk").disabled=true;
                   sek=0;    
                    document.write("<div style="+'"'+"text-align: center; background-image: url(tlo1.jpg); height:100%;"+'"'+">Czas dobiegł końca, Game over!");    
                    document.write("<br><br>");
                    //document.write("Twój wynik to (" + "" + ") punktów.");
                    //document.write("<FORM>");
                    document.write("<a href="+'"'+"http://localhost:8080/JSP3/"+'"'+ ">Rozpocznij od nowa!</a></div>");
                    //document.write("</FORM><br></body>");
                    
                       
                       
               }  
            }
            odliczaj(document.getElementById('sekundy'),x)       
        </script>
        <% } %>
    </body>
</html>

