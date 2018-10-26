<%-- 
    Document   : guardarTipoUsuario
    Created on : 28-09-2018, 21:42:42
    Author     : RLCR
--%>
<%@page import = "clases.Conexion"%>
<%@page contentType = "text/html" pageEncoding = "UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv = "Content-Type" content = "text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Guardar nuevo tipo y direccionar a la nueva direccion con response.sendRedirect("nombrePagina.jsp");
            Conexion cn = new Conexion();//crea conexion
            String txtTipo = request.getParameter("txtTipo");//obtiene txttipo
            String txtDescripcion = request.getParameter("txtDescripcion");//obtiene txtdescripcion
            cn.nuevoTipoUsuario(txtTipo, txtDescripcion);//inserta los valores en la base de datos
            response.sendRedirect("verTiposUsuario.jsp");//redirige a otra pagina
            %>
    </body>
</html>
