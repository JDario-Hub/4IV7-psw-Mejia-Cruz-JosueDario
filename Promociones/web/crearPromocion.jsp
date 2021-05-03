<%-- 
    Document   : crearPromocion
    Created on : 1/05/2021, 07:33:29 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Promocion</title>
    </head>
    <body>
        <h1>Promocion</h1>
        <%
          Connection con = null;
            Statement set = null;
            ResultSet rs = null;
            
            String url, userName, password, driver;
            
            url = "jdbc:mysql://localhost/registrousuarios";
            userName = "root";
            password = "n0m3l0";
            driver = "com.mysql.jdbc.Driver";
            
             try{
                Class.forName(driver);
                con = DriverManager.getConnection(url, userName, password);
                
                int id,descuento;
                
                id = Integer.parseInt(request.getParameter("id_pro"));
                descuento =Integer.parseInt(request.getParameter("descuento"));
                
                String q = ("id * descuento / 100");
                
                
                try{
                    
                    set.executeUpdate(q);
  
                        set.close();
                
                }catch(SQLException ed){
                    System.out.println("Error al crear promocion");
                    System.out.println(ed.getMessage());
                    %>
                    
                    <%
                
                }
                con.close();
            
            }catch(Exception e){
                System.out.println("Error al conectar la bd");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
        %>
        <a href="index.html" >Regresar al Administrador de Promociones</a>
    </body>
</html>
