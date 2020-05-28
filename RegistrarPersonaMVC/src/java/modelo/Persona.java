package modelo;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class Persona {
     //Atributos de la clase
    String dui;
    String apellidos;
    String nombres;
    
    Connection cnn;
    Statement state;
    ResultSet result;
    
   //Constructor vacio de la clase tipo público
   // El constructor lo utilizaremos para conectar con la base de datos. 
    public Persona() {
        try {
            Class.forName("com.mysql.jdbc.Driver");//Driver de la base de datos
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_recurso_humano?zeroDateTimeBehavior=convertToNull", "root", "");//url de la BD,user,pass 
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean insertarDatos(){
    try{
    String miQuery = "insert into tb_persona values ('" + dui + "', '" + apellidos + "', '" + nombres + "');";    
    int estado = 0; //Estado de la inserción
    state = cnn.createStatement();
    estado = state.executeUpdate(miQuery);
    if(estado == 1){
        return true;
    }
    } catch (SQLException ex) {
    Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
}
    return false;
}

    // Generar los metódos get y set para los atributos

    public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
   
}
