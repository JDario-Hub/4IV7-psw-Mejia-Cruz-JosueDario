<%-- 
    Document   : registro
    Created on : 2/05/2021, 08:14:52 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar</title>
    </head>
    <body>
 <%
    Connection con = null;
            Statement set = null;
            ResultSet rs = null;
            
            String url, userName, password, driver;
            
            url = "jdbc:mysql://localhost/bend_y_jerrys";
            userName = "root";
            password = "Staticroof+4";
            driver = "com.mysql.jdbc.Driver";
          
            
            try{
                Class.forName(driver);
                con = DriverManager.getConnection(url, userName, password);
                
                try{
                    String Nnombre,Nappa,Napma,Ndir,Naci,Nnos,Ncon,q;
                    int  tel, cel ;
                  
                    Nnombre = request.getParameter("nombre");
                    Nappa = request.getParameter("appat");
                    Napma = request.getParameter("apmat");
                    Ndir = request.getParameter("direccion");
                    tel = Integer.parseInt(request.getParameter("telfij"));
                    cel = Integer.parseInt(request.getParameter("telcel"));
                    Nnos = request.getParameter("usuario");
                    Ncon = request.getParameter("contraseña");
                    Naci = request.getParameter("nacimiento");
                    
                     q = "insert into Musuarios"
                             + "(nom_usu,app_usu, apm_usu, nac_usu, dir_usu, tel_usu,cel_usu,nos_usu ,con_usu ) "
                            + "values "
                            + "('"+Nnombre+"', '"+Nappa+"', '"+Napma+"','"+Naci+"''"+Ndir+"', '"+tel+"', '"+cel+"','"+Nnos+"','"+Ncon+"')";
                   
                    set = con.createStatement();
                    
                     set.executeUpdate(q);
                          
                   
                    %>
        <h1>Registro Exitoso</h1>            
                    <%
                set.close();
                
                }
                catch(SQLException ed){
                    System.out.println("Error al registrar en la tabla");
                    System.out.println(ed.getMessage());
                    %>
        <h1>Registro No Exitoso</h1>            
 <%  
                }
                
             con.close();
            }catch(Exception e){
                System.out.println("Error al conectar la bd");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
 
   
            }
 %>
 <br>            
 <a href="index.html">Administrador</a>
             <br>
            <a href="consultarUsuario.jsp">Consultar el usuario</a>  
    </body>
</html>
