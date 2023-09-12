<%@page import="com.emergentes.Persona"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("listaper") == null) {
        ArrayList<Persona> lisaux = new ArrayList<Persona>();
        session.setAttribute("listaper", lisaux);
    }
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
%>    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Registros</h1>
        <a href="MainServlet?op=nuevo">Nuevo Registro</a>
        <table border='1'>
            <tr>
                <th>ID</th>
                <th>NOMBRES</th>
                <th>APELLIDOS</th>
                <th>EDAD</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <%
                if (lista != null) {
                    for (Persona item : lista) {
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getNombres()%></td>
                <td><%= item.getApellidos()%></td>
                <td><%= item.getEdad()%></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId()%>">Editar</a> 
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId()%>"
                       onclick="return(confirm('Esta seguro de Eliminar??'))">Eliminar</a>
                </td>
            </tr>
            <%               
                }
            }

            %>


        </table>
    </body>
</html>
