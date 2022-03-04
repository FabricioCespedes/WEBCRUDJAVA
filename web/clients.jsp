<%-- 
    Document   : clients
    Created on : 3 mar. 2022, 17:24:33
    Author     : Progra
--%>

<%@page import="domain.Client"%>
<%@page import="bussinessLogic.ClientBL"%>
<%@page import="java.util.List" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de clientes</title>
        <jsp:include page="WEB-INF/pages/commons/metaData.jsp"/>
    </head>
    <body>
        <jsp:include page="WEB-INF/pages/commons/menu.jsp"/>

        <div class="container">
            <div class="card-header">
                <h1>Lista de clientes</h1>
                <br>
                <table class="table table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th>Codigo</th>
                            <th>Nombre</th>
                            <th>Telefono</th>
                            <th>Direccion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ClientBL logic = new ClientBL();
                            List<Client> list = logic.listAll("");
                            for (Client client : list) { %>
                            <tr>
                                <td><%= client.getId_client() %> </td>
                                <td><%= client.getName() %> </td>
                                <td><%= client.getPhone() %> </td>
                                <td><%= client.getDirection() %> </td>
                                <td>
                                    <a> Modificar</a>
                                    <a> Eliminar</a>
                                </td>
                            </tr> 
                        <%}
                        %>

                    </tbody>
                </table>

            </div>
        </div>
    </body>
</html>
