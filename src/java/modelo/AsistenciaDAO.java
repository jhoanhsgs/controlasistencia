/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import config.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author JH
 */
public class AsistenciaDAO {
     conexion cn=new conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    //operaciones CRUD
      public Personas validar(String user, String pass){
        Personas pm=new Personas();
        String sql="select * from tblusuario where Usuario=? and Contraseña=?";
        try {
            con=cn.conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs=ps.executeQuery();
            while(rs.next()){
                pm.setId(rs.getInt("IDUsuario"));
                pm.setUser(rs.getString("Usuario"));
                pm.setpass(rs.getString("Contraseña"));
                pm.setNombre(rs.getString("IDExcusa "));
                
            } 
        } catch (Exception e) {
        }return pm;
    }
    
    public List llenar(){
        String sql="SELECT DISTINCT * FROM tbl_personas INNER JOIN tbl_ficha_x_personas ON tbl_ficha_x_personas.FK_id_ficha!=1 AND tbl_personas.FK_id_rol=2;";
        List<Asistencia>asistencia=new ArrayList<>();
        try {
            con=cn.conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Asistencia Am=new Asistencia();
                Am.setId(rs.getInt(1));
                Am.setCedula(rs.getString(2));
                Am.setNombre(rs.getString(3));
                Am.setApellido(rs.getString(4));
                asistencia.add(Am);
            }
        } catch (Exception e) {
        }
        return asistencia;
    }
   /*   public int agregar(Asistencia Am){     
        String sql="insert into tblpersonas(Cedula, Nombre,Apellido,email,IDUsuario,IDRol)values(?,?,?,?,?,?)";
        try {
            con=cn.conexion();
            ps=con.prepareStatement(sql);
            
            ps.setString(1,Am.getCedula());
            ps.setString(2,Am.getNombre());
            ps.setString(3,Am.getApellido());
            ps.setDate(4, (java.sql.Date) Am.getFecha());
            ps.setString(5,Am.getasistencia().toString());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    }*/
     public Asistencia listarId(int id){
        Asistencia Am=new Asistencia();
        String sql="select * from tblpersonas where IDPersonas="+id;
       
        try {
            con=cn.conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Am.setCedula(rs.getString(2));
                Am.setNombre(rs.getString(3));
                Am.setApellido(rs.getString(4));
              
                
            }
        } catch (Exception e) {
        }
        return Am;
    } 
    /*public int Actualizar(Personas pm){
        String sql="update tblpersonas set Cedula=?, Nombre=?, Apellido=?, Email=?, IDUsuario=?, IDRol=? where IDPersonas=?";
        try {
            con=cn.conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1,pm.getcedula());
            ps.setString(2,pm.getNombre());
            ps.setString(3,pm.getapellido());
            ps.setString(4,pm.getemail());
            ps.setString(5,pm.getIduser());
            ps.setString(6,pm.getIdrol());
            ps.setInt(7, pm.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void eliminar(int id){
        String sql="delete from tblpersonas where IDPersonas="+id;
        try {
            con=cn.conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }*/

   
    public Asistencia listar(int idPersonas) {
            throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        }

   
}
    

