<%-- 
    Document   : cerrar
    Created on : 28-09-2018, 19:35:39
    Author     : RLCR
--%>

<%@page contentType = "text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv = "Content-Type" content = "text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             HttpSession misesion = request.getSession(true); 
            String usuarioSesion = (String)misesion.getAttribute("username");
            if(misesion != null){
                misesion.invalidate();
                out.print("Sesion cerrada para: "+usuarioSesion);
            }else{
                out.print("La sesion esta cerrada");
            }
        %>
    </body>
</html>
