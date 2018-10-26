<%-- 
    Document   : resultado
    Created on : 28-09-2018, 19:17:17
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
            String usuario = request.getParameter("txtemail");
            String password = request.getParameter("txtpassword");
            if(usuario.equalsIgnoreCase("admin@gmail.com")&& password.equals("Admin")){
                
            HttpSession misesion = request.getSession(true); //si hay algo igual a la session entrar si no crear
            misesion.setAttribute("username", usuario);//en la session se estra crando un atributo de *rear variable de session en variable de session el nombre sera y el valor 
            misesion.setAttribute("password", password);
            String usuarioSesion = (String)misesion.getAttribute("username");

            out.print(usuarioSesion);
            out.print("<a href=\".\\nuevoTipoUsuario.jsp\">Crear Nuevo Tipo</a>");
            out.print("<a href=\".\\cerrar.jsp\">Cerrar sesion</a>");
            }else{
                out.print("Usuario no existe");
            }
            
            %>
            <br />
            
    </body>
</html>
