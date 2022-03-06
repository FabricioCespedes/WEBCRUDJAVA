<%-- 
    Document   : clientDelete
    Created on : 5 mar. 2022, 20:26:20
    Author     : Sergio
--%>

<%@page import="bussinessLogic.ClientBL"%>
<%@page import="domain.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar cliente</title>
        <jsp:include page="WEB-INF/pages/commons/metaData.jsp"/>
    </head>
    <body>
        <jsp:include page="WEB-INF/pages/commons/menu.jsp"/>
        <main>
            <div class="container mx-auto" style="width: 90%; margin-top: 2%;">
                <%if (request.getParameter("msg") != null) {%> 
                <div class="alert alert-warning alert-dismissible fade show" role="alert">
                    <strong>Advertencia</strong>
                    <<p><%= request.getParameter("msg")%></p>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                <%}
                    request.setAttribute("msg", null);

                %>
                <div class="row justify-content-md-center" >
                    <div class="col-md-12">
                        <div class="card mw-100" >
                            <div class="card-header">
                                <h4>Eliminar cliente</h4>
                            </div>
                            <div class="card-body">
                                <%  String id = request.getParameter("id");
                                    int cod = Integer.parseInt(id);
                                    Client client = null;
                                    ClientBL logic = new ClientBL();
                                    if (cod > 0) {
                                        client = logic.getOne(" id_client = " + id);
                                        id = "" + client.getId_client();
                                    } else {
                                        client = new Client();
                                        id = "";
                                    }
                                %>
                                <form action="DeleteClient?txtCod=<%=id%>" method="post">
                                    <div class="form-group">
                                        <label for="txtCod" class="control-label">
                                            Codigo:
                                        </label>
                                        <input class="form-control" readonly type="number" id="txtCod" name="txtCod" value="<%= id%>"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtName" class="control-label">
                                            Nombre
                                        </label>
                                        <input class="form-control" readonly type="text" id="txtName" name="txtName" value="<%= client.getName()%>"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtPhone" class="control-label">
                                            Telefono
                                        </label>
                                        <input class="form-control" readonly type="text" id="txtPhone" name="txtPhone" value="<%= client.getPhone()%>"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtDireccion" class="control-label">
                                            Direccion
                                        </label>
                                        <input class="form-control" readonly type="text" id="txtDireccion" name="txtDireccion" value="<%= client.getDirection()%>"/>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input  type="submit" id="btnDelete" value="Eliminar" class="btn btn-primary mr-2" onclick="DeleteClient">
                                            <input type="button" id="btnOut" value="Regresar" class="btn btn-primary mr-2"  onclick="location.href = 'clients.jsp'">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
