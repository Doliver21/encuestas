<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Encuestas</title>
        <%@ include file="/template/header.jsp" %>
    </head>
    <body>
        <%@ include file="/template/top.jsp" %>

        <div class="row-fluid" style="padding: 20px;">
            <div class="span12" style="text-align: center">
                <span class="main-text" >Ups. Ha habido un problema</span>
            </div>
        </div>
        <div class="row-fluid" style="padding: 20px;">
            <div class="span12">
                <img src="<%=request.getContextPath() %>/img/icons/alert.png" alt="alert" class="center" >
            </div>
        </div>
        <div class="row-fluid" style="padding: 20px;">
            <div class="span12"  style="text-align: center">
                <span class="main-text-gray">La p&aacute;gina que est&aacute;s buscando no existe.</span>
            </div>
        </div>

        <%@ include file="/template/bottom.jsp" %>
    </body>
</html>

