<%@page import="es.logongas.encuestas.modelo.resultados.RespuestaPregunta"%>
<%@page import="es.logongas.encuestas.presentacion.widget.RespuestaPreguntaWidget"%>
<%@page import="es.logongas.encuestas.presentacion.widget.RespuestaPreguntaWidget"%>
<%@page import="es.logongas.encuestas.modelo.resultados.RespuestaPregunta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
RespuestaPregunta respuestaPregunta=(RespuestaPregunta)request.getAttribute("respuestaPregunta");

RespuestaPreguntaWidget respuestaPreguntaWidget=new RespuestaPreguntaWidget(respuestaPregunta);

%>
<!doctype html>
<html>
    <head>
        <title>JSP Page</title>
        <%@ include file="/template/header.jsp" %>
    </head>
    <body>
        <%@ include file="/template/top.jsp" %>

        <div class="row-fluid" >
            <div class="span12"><img src="img/icons/task_48x48.png" alt="grafica" class="center" ></div>
        </div>
        <%=respuestaPreguntaWidget.toHTML() %>

        <%@ include file="/template/bottom.jsp" %>
    </body>
</html>
