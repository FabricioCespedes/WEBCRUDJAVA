<%-- 
    Document   : index
    Created on : 3 mar. 2022, 17:10:24
    Author     : Progra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de gestion</title>

        <jsp:include page="WEB-INF/pages/commons/metaData.jsp"/>
    </head>
    <body>
        <jsp:include page="WEB-INF/pages/commons/menu.jsp"/>

        <main  style="width: 100%; height: 100%; display: flex ; align-items: center; justify-content: center; ">
            <div class="card text-center mx-auto" style="width: 90%; margin-top: 2%"   >
                <div class="card-header">
                    <h1>Sistema de gestion empresarial</h1>
                </div>
                <div class="card-body">
                    <h5 class="card-title">Este sera nuestro landing-page</h5>
                    <p class="card-text">Ejemplo con JSP</p>
                    <a href="#" class="btn btn-primary">Precionar aqui</a>
                </div>
                <div class="card-footer text-muted">
                    Todos los derechos reservados &COPY; Fabricio Cespedes
                </div>
            </div>
        </main>
    </body>
</html>
