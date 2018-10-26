<%-- 
    Document   : editar
    Created on : 05-10-2018, 20:45:24
    Author     : RLCR
--%>

<%@page import = "java.util.ArrayList"%>
<%@page import = "clases.tipoUsuario"%>
<%@page import = "clases.Conexion"%>
<%@page contentType = "text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv = "Content-Type" content = "text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%String id = request.getParameter("id");
        out.print(id);
        Conexion cn = new Conexion();//instanciar clase conexion
            ArrayList<tipoUsuario> tipos = cn.verTipoUsuario();   
        
        
        out.print("<form method = 'POST' action = 'editarTipoUsuario.jsp'>");
            out.print("Tipo: <input type=\"text\" name=\"txtTipo\" value='"+tipos.get(0).getTipo()+"'><br/><br/>");
            out.print("<input type=\"hidden\" name=\"hdnId\" value='"+tipos.get(0).getId()+"'><br/><br/>");
            out.print("Descripcion: <input type=\"text\" name =\"txtDescripcion\" value='"+tipos.get(0).getDescripcion()+"'><br/><br/>");
            out.print("<input type =\"submit\"name=\"btnEditar\">");
            out.print("</form>");
        %>
    </body>
</html>
