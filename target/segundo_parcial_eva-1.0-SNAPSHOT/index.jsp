
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> lis = (ArrayList<Producto>) session.getAttribute("prod");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Segundo Parcial TEM-742</title>
    </head>
    <body>
        <h3>SEGUNDO PARCIAL TEM-742</h3>
        <h3>NOMBRE: EVA MARISOL LAURA QUISPE</h3>
        <h3>CARNET: 14557034 LP</h3>
        <h2>PRODUCTOS</h2>
        <a href="MainController?op=nuevo">Nuevo producto</a>
        <table border =1>
            <tr>
                <th>id</th>
                <th>descripcion</th>
                <th>cantidad</th>
                <th>precio</th>
                <th>categoria</th>
                <th>editar</th>
                <th>eliminar</th>
            </tr>
            <%
                if (lis != null) {
                    for (Producto i : lis) {

            %>
            <tr>
                <td><%= i.getId() %></td>
                <td><%= i.getDescripcion() %></td>
                <td><%= i.getCantidad() %></td>
                <td><%= i.getPrecio() %></td>
                <td><%= i.getCategoria() %></td>
                <td><a href="MainController?op=editar&id=<%= i.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= i.getId() %>" onclick="return confirm('¿ELIMINAR?')">Eliminar</a></td>
            </tr>
            <%                    
                    }
                }
            %>
        </table>
    </body>
</html>
