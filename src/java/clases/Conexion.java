package clases;

import com.mysql.jdbc.Connection;
import java.sql.*;
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author RLCR
 */
public class Conexion {
    private static Connection cnx = null;
    public static Connection obtener() throws ClassNotFoundException, SQLException{
    if(cnx == null){
        try{
        Class.forName("com.mysql.jdbc.Driver");
        cnx = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/biblioteca", "root", "root");
    }catch(SQLException ex){
            throw new SQLException(ex);
    }catch(ClassNotFoundException ex){
            throw new ClassNotFoundException(ex.getMessage());
    }  
    }    
    return cnx;
    }
    public static void cerrar() throws SQLException{
        if(cnx != null){
            cnx.close();
        }
    }
    public void nuevoTipoUsuario(String tipo_u, String descripcion) throws ClassNotFoundException, SQLException{
    String query = "INSERT INTO tipo_usuario(tipo_u, descripcion) values('"+tipo_u+"', '"+descripcion+"')";    
    Statement st = obtener().createStatement();
    st.executeUpdate(query);
    cerrar();
    cnx = null;//esta linea es para que quede nula y se pueda abrir la conexión nuevamente sin que se caiga la página 
    }
    
    public void editarTipoUsuario(String id, String tipo, String descripcion) throws ClassNotFoundException, SQLException{
    String query = "UPDATE tipo_usuario set tipo_u = '"+tipo+"' , descripcion = '"+descripcion+"' where idTipoUsuario = "+id+";";    
    Statement st = obtener().createStatement();
    st.executeUpdate(query);
    cerrar();
    cnx = null;//esta linea es para que quede nula y se pueda abrir la conexión nuevamente sin que se caiga la página 
    }
    
    public ArrayList<tipoUsuario> verTipoUsuario() throws ClassNotFoundException, SQLException{
        ArrayList<tipoUsuario> tipos = new ArrayList<>();
        String Query = "SELECT * FROM tipo_usuario";
        Statement st = obtener().createStatement();
        ResultSet rs = st.executeQuery(Query);
        //return rs;
        while(rs.next()){
        tipoUsuario t = new tipoUsuario();
        t.setTipo(rs.getString("tipo_u"));
        t.setDescripcion(rs.getString("descripcion"));
        t.setId(rs.getInt("idTipo_Usuario"));
        tipos.add(t);
        }
        cerrar();
        cnx = null;
        return tipos;
    }
    
     public ArrayList<tipoUsuario> verTipoUsuarioById(String id) throws ClassNotFoundException, SQLException{
        ArrayList<tipoUsuario> tipos = new ArrayList<>();
        String Query = "SELECT * FROM tipo_usuario where idTipoUsuario="+id+"";
        Statement st = obtener().createStatement();
        ResultSet rs = st.executeQuery(Query);
        //return rs;
        while(rs.next()){
        tipoUsuario t = new tipoUsuario();
        t.setTipo(rs.getString("tipo_u"));
        t.setDescripcion(rs.getString("descripcion"));
        t.setId(rs.getInt("idTipo_Usuario"));
        tipos.add(t);
        }
        cerrar();
        cnx = null;
        return tipos;
    }
}

