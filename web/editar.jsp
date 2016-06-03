<%-- 
    Document   : crear
    Created on : 31-may-2016, 22:13:28
    Author     : ricardotoledo
--%>

<%@page import="accesodato.Coneccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EDITAR USUARIO</h1>
        <br>
        <% String usuario_id=request.getParameter("usuario_id"); %>
        
        <form method="post" action="ServletUsuario">
        <table border="1">
            <tr>
                <td>USUARIO ID</td><td><input type="text" name="usuario_id" readonly value="<% out.println(""+usuario_id);  %>"></td>
            </tr>
            <%  Coneccion con=new Coneccion();
                con.setConsulta("select * from Usuarios where usuario_id='"+usuario_id+"'");
                while(con.getResultado().next()){
            
            
            %>
            
            <tr>
                <td>NOMBRE</td><td><input type="text" name="nombre" value="<% out.println(""+con.getResultado().getString("nombre"));  %>"></td>
            </tr>
             <tr>
                <td>APEPAT</td><td><input type="text" name="apepat" value="<% out.println(""+con.getResultado().getString("apepat"));  %>"></td>
            </tr>
             <tr>
                <td>TELEFONO</td><td><input type="text" name="telefono" value="<% out.println(""+con.getResultado().getString("telefono"));  %>"></td>
            </tr>
            <tr>
                <td><input type="submit" name="editar" value="Actualizar"></td>
            </tr>
            <% } %>
        </table>
        </form>
    </body>
</html>
