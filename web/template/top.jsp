<%
//La redirecci�n no hay que hacerla si ya estamos en la propia p�gina que avisa que est� desactivado y lo sabemos por esta variable.
if (!(request.getAttribute("disableCheckNoScript")==Boolean.TRUE)) {
%>
<noscript>
	<meta http-equiv="refresh" content="0; url=<%=request.getContextPath() %>/noscript.jsp"/>
</noscript>
<%
}
%>

        <div class="row-fluid" style="margin-top: 1em">
            <div class="span1" ></div>
            <div class="span10 marco">

                <div class="cabecera" >
                    <div class="row-fluid">
                        <div class="span12 nav-bar" style="text-align: right;">
                            <a href="<%=request.getContextPath() %>">Inicio</a>&nbsp;&nbsp;|
                            &nbsp;&nbsp;<a href="#">�Porqu� esta encuesta?</a>&nbsp;&nbsp;|
                            &nbsp;&nbsp;<a href="#">Ayuda</a>&nbsp;&nbsp;|
                            <%
                            if (request.getSession().getAttribute("idUser")==null) {
                            %>
                            &nbsp;&nbsp;<a href="#" onclick="showLoginWindow()" >Entrar</a>
                            <%
                            } else {
                            %>
                            &nbsp;&nbsp;<a href="#" onclick="logout()" >Salir</a>&nbsp;&nbsp;|
                            &nbsp;&nbsp;<a href="<%=request.getContextPath()%>/administracion/administracion.jsp" >Administrar</a>
                            <%
                            }
                            %>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    </div>
                    <div class="row-fluid" style="margin-top: 2em;">
                        <div class="span12"><a href="http://www.fpmislata.com"><img src="<%=request.getContextPath() %>/img/icons/nombre-instituto.png" alt="instituto" class="center" ></a></div>
                    </div>
                </div>

                <div class="cuerpo container-fluid">
