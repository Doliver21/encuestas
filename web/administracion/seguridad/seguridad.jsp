<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="es.logongas.encuestas.seguridad">
    <head>
        <title>Encuestas</title>
        <%@ include file="/template/header.jsp" %>
        <script type='text/javascript' src="generic/crud.js"></script> 
        <script type='text/javascript' src="seguridad.js"></script>
        <script type='text/javascript' src="main/main.js"></script>
        <script type='text/javascript' src="user/user.js"></script>
        <script type='text/javascript' src="group/group.js"></script>
        <script type='text/javascript' src="secureresourcetype/secureresourcetype.js"></script>        
    </head>
    <body>
        <%@ include file="/template/top.jsp" %>
        <div class="row-fluid" >
            <div class="span2" >
                <div class="well sidebar-nav">
                    <ul class="nav nav-list">
                        <li class="nav-header">Seguridad</li>
                        <li><a href="#/user/list">Usuarios</a></li>
                        <li><a href="#/group/list">Grupos</a></li>
                        <li><a href="#/ace/list">ACE</a></li>
                        <li class="nav-header">Definición</li>
                        <li><a href="#/secureresourcetype/list">Tipos</a></li>
                        <li><a href="#">Recursos</a></li>
                        <li><a href="#">Permisos</a></li>
                    </ul>
                </div>                
            </div>
            <div class="span10" ng-view>
                
            </div>
        </div>
        <%@ include file="/template/bottom.jsp" %>
    </body>
</html>
