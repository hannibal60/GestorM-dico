/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metodos;

import static SQL.Conexion.getConection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CRUD {

    PreparedStatement ps;
    ResultSet res;
    Connection con = null;

    public void insertar(String Nombre, String APaterno, String AMaterno, String fecha, String sexo, String curp, String rfc, String cedula) {

        con = getConection();

        try {

            ps = con.prepareStatement("INSERT INTO personas (nombre,apellido_paterno, apellido_materno, f_nacimiento, sexo, curp, tipo_persona) VALUES (?,?,?,?,?,?,?)");
            ps.setString(1, Nombre);
            ps.setString(2, APaterno);
            ps.setString(3, AMaterno);
            ps.setString(4, fecha);
            ps.setString(5, sexo);
            ps.setString(6, curp);
            ps.setString(7, "2");
            ps.execute();

            int id = ObtieneId(Nombre);

           insertaMedico(id, rfc, cedula);
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public int ObtieneId(String Nombre) {

        con = getConection();

        int id = 0;
        String sql = "SELECT id_persona, nombre, apellido_paterno, apellido_materno FROM personas WHERE nombre = ?";

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, Nombre);
            res = ps.executeQuery();

            if (res.next()) {
                id = Integer.parseInt(res.getString("id_persona"));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return id;
    }

    public void insertaMedico(int id, String rfc, String cedula) {
        try {

            String idNuevo = String.valueOf(id);
            con = getConection();

            ps = con.prepareStatement("INSERT INTO medicos (id_persona, rfc, cedula_profesional) VALUES (?,?,?)");
            ps.setString(1, idNuevo );
            ps.setString(2, rfc);
            ps.setString(3, cedula);
            ps.execute();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
 
}
