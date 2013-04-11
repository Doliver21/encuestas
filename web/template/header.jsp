<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/css/bootstrap.css">
<link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/css/default/jquery-ui.css">
<link rel="stylesheet" media="screen" href="<%=request.getContextPath()%>/css/style.css">
<script type='text/javascript' src="<%=request.getContextPath()%>/js/jquery-1.9.0.js"></script>
<script type='text/javascript' src="<%=request.getContextPath()%>/js/jquery-ui.js"></script>
<script type='text/javascript' src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/angular.js'></script>
<script type='text/javascript' src="<%=request.getContextPath()%>/js/widgets.js"></script>
<script type='text/javascript'>
    function getContextPath() {
        return "<%=request.getContextPath()%>";
    }

    function showLoginWindow() {
        $('#loginModal').modal()
    }

    function login() {
        var params={
            login:$("#inputLogin").val(),
            password:$("#inputPassword").val()
        }

        jQuery.ajax({
            type: 'POST',
            contentType: 'application/json',
            dataType: "json",
            url:getContextPath()+"/api/session?" + jQuery.param(params) ,
            success: function(data) {
                window.location.href=getContextPath()+"/administracion/index.jsp";
            },
            error: function(jqXHR, textStatus, errorThrown) {
                if (jqXHR.status===400) {
                    var businessMessages=jQuery.parseJSON(jqXHR.responseText);
                    for(var i=0;i<businessMessages.length;i++) {
                        var businessMessage=businessMessages[i];
                        if (businessMessage.propertyName===null) {
                            alert(businessMessage.message);
                        } else {
                            alert(businessMessage.propertyName+":"+businessMessage.message);
                        }
                    }
                } else {
                    alert("Fall� la petici�n:"+textStatus+"\n"+errorThrown);
                }
            }
        });

    }

</script>

