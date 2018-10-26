<%-- 
    Document   : verTiposUsuario
    Created on : 05-10-2018, 19:12:45
    Author     : RLCR
--%>

<%@page import = "clases.Conexion"%>
<%@page import = "clases.tipoUsuario"%>
<%@page import = "java.util.ArrayList"%>
<%@page contentType = "text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv = "Content-Type" content = "text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Conexion cn = new Conexion();//instanciar clase conexion
            ArrayList<tipoUsuario> tipos = cn.verTipoUsuario();    
            out.print("<center><table border = \"1em\">");//tabla con bordes
            out.print("<tr>");
            out.print("<td>");
            out.print("Tipo");
            out.print("</td>");
            out.print("<td>");
            out.print("Descripcion");
            out.print("</td>");
            out.print("<td>");
            out.print("Acciones");
            out.print("</td>");
            out.print("</tr>");
            for(int x = 0; x < tipos.size(); x++){
                //tipoUsuario t = tipos.get(x);
                out.print("<tr>");
                out.print("<td>");
                out.print(tipos.get(x).getTipo());
                out.print("</td>");
                out.print("<td>");
                out.print(tipos.get(x).getDescripcion());//imprimir elemento de una fila de la lista
                out.print("</td>");
                out.print("<td>");
                out.print("<a href=\"editar.jsp?id="+tipos.get(x).getId()+"\">Editar</a>");
                
                
                
            }
            out.print("</table></center>");
            
            
        %>
    </body>
</html>
