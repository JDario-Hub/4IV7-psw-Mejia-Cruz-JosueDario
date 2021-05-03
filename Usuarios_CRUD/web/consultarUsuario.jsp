<%-- 
    Document   : consultarProducto
    Created on : 30/04/2021, 10:57:00 PM
    Author     : EMOA1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="">
        <link rel="shortcut icon" href="assets/images/icono.png">
        <title>Consultar</title>
    </head>
    <body>
        <div class="containerConsultar" >
            <h1 align="center">Usuario</h1>
        <br>
        <table border="2" width="100%" >
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Appellido Paterno</th>
                    <th>Apellido Materno</th>
                    <th>Fecha de nacimietno</th>
                    <th>Direcion</th>
                    <th>Telefono</th>
                    <th>Celular</th>
                    <th>Nombre de usuario</th>
                    <th>Contraseña</th>
                    <th>Elminar</th>
                    <th>Editar</th>
                </tr>
            </thead>
            <tbody>
                
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
                            String q = "select * from Musuarios";
                            
                            set = con.createStatement();
                            rs = set.executeQuery(q);
                            while(rs.next()){
                            
                %>
                <tr>
                    <td> <%=rs.getInt("id_usu")%> </td>
                    <td> <%=rs.getString("nom_usu")%> </td>
                    <td> <%=rs.getString("appat_usu")%> </td>
                    <td> <%=rs.getString("apm_usu")%> </td>
                    <td> <%=rs.getString("nac_usu")%> </td>
                    <td> <%=rs.getString("dir_usu")%> </td>
                    <td> <%=rs.getString("tel_usu")%> </td>
                    <td> <%=rs.getString("cel_usu")%> </td>
                    <td> <%=rs.getString("nos_usu")%> </td>
                    <td> <%=rs.getString("con_usu")%> </td>
                    <td> <a class="tabla" href="modificarUsuario.jsp?id=<%=rs.getInt("id_usu")%>" >Editar</a> </td>
                    <td> <a class="tabla" href="eliminarUsuario.jsp?id=<%=rs.getInt("id_usu")%>" >Borrar</a> </td>
                </tr>


                <%
                                
                                
                                
                            }
                            rs.close();
                            set.close();
                            
                        
                        }catch(SQLException ed){
                            System.out.println("Error al consultar la tabla");
                            System.out.println(ed.getMessage());
                            %>
            </tbody>
            <h1>Recurso no disponible</h1>
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
                
            </tbody>
        </table>
                    <br>
                    <br>
                    <a class="boton" href="index.html" >Regresar al Menú Principal</a>
                     <br>
                     <br>
                     <a class="boton" href="administrarProductos.html" >Administrar Productos</a>
        </div>
        
    </body>
</html>