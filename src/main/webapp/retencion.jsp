<%-- 
    Document   : retencion
    Created on : 15 ene. 2021, 21:32:27
    Author     : manue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        float salario =Integer.parseInt(request.getParameter("salario"));
        String nombre =request.getParameter("nombre");
        double retencion;
        if(salario>1000 && salario<3000){
            retencion = salario * 0.1;
            retencion = salario - retencion;
        }
        else if(salario>3000){
            retencion = salario * 0.2;
            retencion = salario - retencion;
        }
        else{
            retencion = salario;
        }
        %>
        
        <h1>Hola  <%=nombre%></h1>
        <h2>Su salario bruto es de   <%=salario%></h2>
        <h2>Su salario neto es de   <%=retencion%></h2>
    </body>
</html>
