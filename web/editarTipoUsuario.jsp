<%-- 
    Document   : editarTipoUsuario
    Created on : 05-10-2018, 21:20:25
    Author     : RLCR
--%>

<%@page import="clases.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            Conexion cn = new Conexion();//crea conexion
            String txtTipo = request.getParameter("txtTipo");//obtiene txttipo
            String txtDescripcion = request.getParameter("txtDescripcion");//obtiene txtdescripcion
            String id = request.getParameter("hdnId");
            cn.editarTipoUsuario(id, txtTipo, txtDescripcion);//inserta los valores en la base de datos
            //response.sendRedirect("verTiposUsuario.jsp");//redirige a otra pagina
            %>
    </body>
</html>
