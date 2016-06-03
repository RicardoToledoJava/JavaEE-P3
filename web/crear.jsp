<%-- 
    Document   : crear
    Created on : 31-may-2016, 22:13:28
    Author     : ricardotoledo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>CREAR NUEVO USUARIO</h1>
        <br>
        <form method="post" action="ServletUsuario">
        <table border="1">
            
            <tr>
                <td>NOMBRE</td><td><input type="text" name="nombre"></td>
            </tr>
             <tr>
                <td>APEPAT</td><td><input type="text" name="apepat"></td>
            </tr>
             <tr>
                <td>TELEFONO</td><td><input type="text" name="telefono"></td>
            </tr>
            <tr>
                <td><input type="submit" name="guardar" value="Guardar"></td>
            </tr>
            
        </table>
        </form>
    </body>
</html>
