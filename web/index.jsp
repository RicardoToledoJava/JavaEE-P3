<%@page import="accesodato.Coneccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listar Usuarios</h1>
        <br>
        <a href="crear.jsp">CREAR USUARIO</a>
        <br>
        <form method="post" action="index.jsp">
            Buscar por Nombre:<input type="text" name="buscarNombre" ><input type="submit" value="Buscar">
        </form>
        <table border="1">
            <thead>
            <th>ID</th>
            <th>NOMBRE</th>
            <th>APEPAT</th>
            <th>TELEFONO</th>
            <th>ACCIONES</th>
        </thead>
        <tbody>
            <%
                Coneccion con = new Coneccion();
                if (request.getParameter("buscarNombre") != null) {
                    if (request.getParameter("buscarNombre").isEmpty()) {
                        con.setConsulta("select * from Usuarios where estado='activo'");
                    } else {

                        String nombre = request.getParameter("buscarNombre");
                        con.setConsulta("select * from Usuarios where nombre like '%"+nombre+"%' and estado='activo'");
                    }
                }else{
                    con.setConsulta("select * from Usuarios where estado='activo'");
                }
            %>
            <% while (con.getResultado().next()) { %>
            <tr>
                <%
                    out.println("<td>" + con.getResultado().getString("usuario_id") + "</td>");
                    out.println("<td>" + con.getResultado().getString("nombre") + "</td>");
                    out.println("<td>" + con.getResultado().getString("apepat") + "</td>");
                    out.println("<td>" + con.getResultado().getString("telefono") + "</td>");
                    out.println("<td>" + "<a href='ServletUsuario?eliminar=" + con.getResultado().getString("usuario_id") + "'>Eliminar</a>" + "</td>");
                    out.println("<td>" + "<a href='editar.jsp?usuario_id=" + con.getResultado().getString("usuario_id") + "'>Editar</a>" + "</td>");

                %>

            </tr>
            <% }%>
        </tbody>

    </table>

</body>
</html>
