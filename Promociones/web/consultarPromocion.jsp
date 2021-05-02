<%-- 
    Document   : consultar
    Created on : 30/04/2021, 04:33:19 PM
    Author     : demon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Cuentas</title>
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
                
                String nom, appat, appmat, correo, q;
                int edad, id;
                
                q = "select * from mregistro";
                
                set = con.createStatement();
                rs = set.executeQuery(q);
                while(rs.next()){
                    id = rs.getInt("id_usu");
                    nom = rs.getString("nom_usu");
                    appat = rs.getString("appat_usu");
                    appmat = rs.getString("apmat_usu");
                    edad = rs.getInt("edad_usu");
                    correo = rs.getString("email_usu");
                    out.println("<tr>"
                            + "<td>"+id+"</td>"
                            + "<td>"+nom+" "+appat+" "+appmat+"</td>"
                            + "<td>"+edad+"</td>"
                            + "<td>"+correo+"</td>"
                            + "</tr>");
                }
                
                System.out.println("Consulta exitosa");
                rs.close();
                set.close();
            
            }catch(Exception e){
                System.out.println("Error al consultar la tabla");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
                
            
            }
        %>
    </body>
</html>