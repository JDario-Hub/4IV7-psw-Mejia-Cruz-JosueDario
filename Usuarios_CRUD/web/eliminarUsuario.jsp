<%-- 
    Document   : eliminarProducto
    Created on : 1/05/2021, 10:30:41 AM
    Author     : EMOA1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/masterstyle.css">
        <link rel="shortcut icon" href="assets/images/icono.png">
        <title>Eliminar Usuarios</title>
    </head>
    <body>
         <% 
            Connection con = null;
            Statement set = null;
            ResultSet rs = null;
            
            String url, userName, password, driver;
            
            url = "jdbc:mysql://localhost/ben_y_jerrys";
            userName = "root";
            password = "Staticroof+4";
            driver = "com.mysql.jdbc.Driver";
            
            try{
                Class.forName(driver);
                con = DriverManager.getConnection(url, userName, password);
                try{
                    int id = Integer.parseInt(request.getParameter("id_usu"));
                    
                    String q = "delete from Musuarios where id_usu = "+id;
                    
                    set = con.createStatement();
                    
                    int borrar = set.executeUpdate(q);
                    
                    %>
            <h1>Registro Borrado con Exito</h1>        
                    <%
                    set.close();
                
                }catch(SQLException ed){
                    System.out.println("Error al borrar el registro de la tabla");
                    System.out.println(ed.getMessage());
                    %>
            <h1>El registro no se encuentra o no es posible borrarlo</h1>        
                    <%
                }
                con.close();
                
            
            }catch(Exception e){
                System.out.println("Error al conectar con la bd");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
                %>
        <h1>Sitio en Construcción</h1>            
                    <%
            
            }
            %>
        
        <br>
                    <a class="boton" href="index.html" >Regresar al Menú Principal</a>
                    <br>
                    <a class="boton" href="administrarProductos.html" >Administrar Productos</a> 
    </body>