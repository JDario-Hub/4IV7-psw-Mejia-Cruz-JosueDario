<%-- 
    Document   : actualizarPromocion
    Created on : 1/05/2021, 04:39:21 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
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
                
                
                String q = "UPDATE mregistro SET  where id_usu ="+id;
                
                set.executeUpdate(q);
                set.close();
                
            }
            catch(Exception ed){
            System.out.println("Error al actualizar el registro de la tabla");
            System.out.println(ed.getMessage());
            }
            }catch(SQLException e){
                System.out.println("Error al conectar con la bd");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
            }
        %>
    </body>
</html>
