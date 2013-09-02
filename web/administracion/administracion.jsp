<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Encuestas</title>
        <%@ include file="/template/header.jsp" %>
    </head>
    <body>
        <%@ include file="/template/top.jsp" %>
        <div class="row-fluid" style="margin-top: 3em;">
            <div class="span4" >
                <a href="<%=request.getContextPath()%>/administracion/graficas/graficas.jsp" class="main-button" >
                    <span class="main-text">Gr&aacute;ficas de resultados</span>
                    <br />
                    <img src="<%=request.getContextPath()%>/img/icons/chart4.png" alt="graficas" class="center" >
                </a>
            </div>
            <div class="span4" >
                <a href="<%=request.getContextPath()%>/administracion/encuestas/encuestas.jsp" class="main-button" >
                    <span class="main-text">Configurar las encuestas</span>
                    <br />
                    <img src="<%=request.getContextPath()%>/img/icons/config.png" alt="definir encuestas" class="center" />
                </a>
            </div>
            <div class="span4" >
                <a href="<%=request.getContextPath()%>/administracion/seguridad/seguridad.jsp" class="main-button" >
                    <span class="main-text">Seguridad y usuarios</span>
                    <br />
                    <img src="<%=request.getContextPath()%>/img/icons/lock.png" alt="usuarios y seguridad" class="center" />
                </a>
            </div>
        </div>

    <%@ include file="/template/bottom.jsp" %>
</body>
</html>
