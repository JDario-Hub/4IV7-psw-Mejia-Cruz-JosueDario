<%-- 
    Document   : eliminarPromocion
    Created on : 1/05/2021, 05:04:55 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <%
          Connection con = null;
            Statement set = null;
            ResultSet rs = null;
            String url, userName, password, driver;
            url = "jdbc:mysql://localhost/registrousuarios";
            userName = "root";
            password = "";
            driver = "com.mysql.jdbc.Driver";
            
            try{
            Class.forName(driver);
            con = DriverManager.getConnection(url, userName, password);
            
            try{
                int id= Integer.parseInt(request.getParameter("idPromocion"));
                int descuento = Integer.parseInt(request.getParameter("descuento"));
                
                
                String q= "delete from mregistro where idPromocion = "+id;
                
                set.executeUpdate(q);
               
                set.close();
            }
            catch(Exception ed){
            System.out.println("Error al actualizar el registro de la tabla");
            System.out.println(ed.getMessage());
            }
            }catch(Exception e){
                System.out.println("Error al conectar con la bd");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
            }
        %>
        <a href="index.html">Regresar a Administrador de Promociones</a>
        <a href="consultarPromocion.jsp">Consultar Promocion</a>
    </body>
</html>
