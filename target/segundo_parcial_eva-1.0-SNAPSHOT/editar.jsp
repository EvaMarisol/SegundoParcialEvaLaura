
<%@page import="com.emergentes.modelo.Producto"%>
<%
    Producto item = (Producto) request.getAttribute("Producto1");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Segundo Parcial TEM-742</title>
    </head>
    <body>
        <h1><%= (item.getId() == 0) ? "Nuevo Producto" : "Editar Producto"%></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId()%>">
            <table>
                <tr>
                    <td>descripcion</td>
                    <td><input type="text" name="descripcion" value="<%= item.getDescripcion()%>"></td>
                </tr>
                <tr>
                    <td>cantidad</td>
                    <td><input type="text" name="cantidad" value="<%= item.getCantidad()%>"></td>
                </tr>
                <tr>
                    <td>precio</td>
                    <td><input type="text" name="precio"  value="<%= item.getPrecio()%>"></td>
                </tr>
                <tr>
                    <td>categoria</td>
                    <td><input type="text" name="categoria" value="<%= item.getCategoria()%>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
