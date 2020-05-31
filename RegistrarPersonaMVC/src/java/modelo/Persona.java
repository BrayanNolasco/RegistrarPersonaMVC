package modelo;

import java.sql.*;
import java.util.ArrayList; // Importar clase ArrayList
import java.util.logging.Level;
import java.util.logging.Logger;
public class Persona {
     //Atributos de la clase
    String dui;
    String apellidos;
    String nombres;
    
    Connection cnn;
    Statement state;
    PreparedStatement ps;
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

   
    
    public Persona(String dui, String apellidos, String nombres) {
        this.dui = dui;
        this.apellidos = apellidos;
        this.nombres = nombres;
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
public ArrayList<Persona> consultarRegistros(){
    ArrayList<Persona> person = new ArrayList(); //crear el array de almacenamiento de tipo persona
    try{
        String miQuery = " select * from tb_persona; "; //definir la consulta
        state = cnn.createStatement(); //crear el boton para la consulta
        result = state.executeQuery(miQuery); //ejecutar la consulta
        while(result.next()){ //recorre todo el resultSet y almacena en cada fila los registros encontrados
                                 //el nombre debe ser asi como esta en la tabla de la base de datos
        person.add(new Persona(result.getString("dui_persona"), result.getString("apellidos_persona"), result.getString("nombre_persona")));
        }
    } catch (SQLException ex) {
        Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
    }
    return person; //independientemente encuentro o no registro retorna el objeto person
}

public void modificar(String nom, String ape, String dni) {
        
          try {

           
            ps = cnn.prepareStatement("UPDATE tb_persona SET apellidos_persona='"+ape+"', nombre_persona='"+nom+"' WHERE dui_persona='"+dni+"'");
            ps.executeUpdate();
         } catch (Exception ex) {
             System.out.println("ERROR"+ex.getMessage());
         }
          
      }
    
      public void eliminar(String dui) throws SQLException{
         try {
             
             ps = cnn.prepareStatement("delete from tb_persona where dui_persona='"+dui+"'");
         ps.executeUpdate();
         } catch (Exception ex) {
             System.out.println("ERROR"+ex.getMessage());
         }
         
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
