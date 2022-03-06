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

        <div class="mx-auto" style="width: 90%; margin-top: 2%;">
            <div class="container-sm"  >
                <div class="card text-center p-1 m-1"    >
                    <h1>Lista de clientes</h1>
                </div>

                <%if (request.getParameter("msg") != null) {%> 
                <div class="alert alert-primary alert-dismissible fade show" role="alert">
                    <button type="button" class="close" data-bs-dismiss="alert" aria-label="alert" >&Chi;</button>
                    <strong>Mensaje</strong>
                    <p><%= request.getParameter("msg")%></p>
                </div>
                <%}
                    request.setAttribute("msg", null);
                %>

                <br>                
                <form action="clients.jsp" method="post" class="form p-1 m-1">
                    <div class="input-group">
                        <input type="text" id="txtName" name="txtName" value=""
                               placeholder="Escriba su nombre para filtrar"
                               class="form-control">
                        <input type="submit" id="btnFind" name="btnFind"  value="Filtrar"
                               class="btn btn-primary">
                    </div>
                </form>               

                <table class="table table-striped p-1 m-1" style="width: 100% !important;" >
                    <thead class="thead-dark">
                        <tr>
                            <th>Codigo</th>
                            <th>Nombre</th>
                            <th>Telefono</th>
                            <th>Direccion</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%                            String name = "";
                            String condition = "";
                            if (request.getParameter("txtName") != null) {
                                name = request.getParameter("txtName").toString();
                                condition = "name like '%" + name + "%' ";
                            }
                            ClientBL logic = new ClientBL();
                            List<Client> list = logic.listAll(condition);
                            for (Client client : list) {%>
                        <tr>
                            <td><%= client.getId_client()%> </td>
                            <td><%= client.getName()%> </td>
                            <td><%= client.getPhone()%> </td>
                            <td><%= client.getDirection()%> </td>
                            <td>

                                <a href="clientNew.jsp?id=<%= client.getId_client()%>"> Modificar</a> |
                                <a method="get" href="DeleteClient?id=<%= client.getId_client()%>"> Eliminar</a>
                            </td>
                        </tr> 
                        <%}
                        %>

                    </tbody>
                </table>

                <a href="index.jsp" class="btn btn-primary">Regresar</a>  
                <a href="clientNew.jsp?id=-1" class="btn btn-primary">Agregar</a>  

            </div>
        </div>

    </body>
</html>
