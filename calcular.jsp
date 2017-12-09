<%
String wt=request.getParameter("primeira");
String ht=request.getParameter("segunda");
String tr=request.getParameter("terceira");

double primeira=Integer.parseInt(wt);
double segunda=Integer.parseInt(ht);
double terceira=Integer.parseInt(tr);

double media;
double maior = 0;
double segundaMaior = 0;
   

    if (primeira > segunda && segunda>terceira){
    maior = primeira;
    segundaMaior = segunda;
    }
    else if (primeira > terceira && terceira>segunda) {
    segundaMaior = terceira;
    maior = primeira;
} 
    
 else if (segunda >= primeira && primeira>=terceira){
    maior = segunda;
    segundaMaior = primeira;
}
 
 else if (segunda >= terceira && terceira>=primeira) {
    segundaMaior = terceira;
    maior = segunda;
}     
    
 
else if (terceira >= primeira && primeira>=segunda) {
    segundaMaior = primeira;
    maior = terceira;
}
 
else if (terceira >= segunda && segunda>=primeira) {
    segundaMaior = segunda;
    maior = terceira;
}


    
 media = (maior+segundaMaior)/2; 

 

%>
<!DOCTYPE html>

<head> 
<body>
    <h3> Resultado </h3>
    <br />
    
    <p> Seu resultado e = <%= media %> </p>
    
     <% if(media <4) { %>
     <p style ="background-color:red"> Voce esta REPROVADO </p> 
     
      <%} else if(6>media && media>=4) { %>
     <p style ="background-color:blue"> Voce esta de Recuperacao </p> 
     
       <%}  else if(6>media && media>=4) { %>
       <p style ="background-color:green"> Voce esta aprovado </p>
       <% } %>
       </br>
       
</body>
</head>
