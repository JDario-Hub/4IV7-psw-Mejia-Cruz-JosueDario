<%-- 
    Document   : registrar
    Created on : 30/04/2021, 04:16:30 PM
    Author     : LENOVO
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="*java.sql*,**"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de usuario</title>
    </head>
    <body>
        <%
            /*aqui va el codigo java*/
            Connection con = null;
            Statement set set= null;
            ResultSet rs = null;
            
            String url,userName,password,driver;
            
            url="jdbc:mysql://localhost/registrousuarios";
            userName="root";
            password="Staticroof+4";
            driver="com.mysql.jdbc.Driver";
            
            try{
            Class.forName(driver);
            con =DriverManager.getConnection(url, userName,password);
            
            try{
            String nombre,ciudad,tel,q;
            nombre=request.getParameter("nombre");
             ciudad=request.getParameter("ciudad");
             
            }
            catch(SQLException ed){
           }
            
            }catch (Exception e){
            
            }
            %>
        <h1>Registro usuario</h1>
    </body>
</html>
