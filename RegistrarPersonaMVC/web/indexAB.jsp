<%-- 
    Document   : index
    Created on : 05-27-2020, 11:45:11 PM
    Author     : Adonis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a  class="navbar-brand" >Registro de Persona</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="indexAB.jsp">Inicio</a></li>
      <li><a href="mostrartodoAB.jsp">Mostrar</a></li>
     
    </ul>
  </div>
</nav>
        <div class="container">
              <div class="col-lg-6">
     <h1>Registro de Personas</h1>
        <!-- En el action colocar el nombre del controlador, para este caso 
        es recibir.do (la extension .do no importa solo indica que es servlet)-->
        <form action="recibir.do" method="POST">
              DUI:<input class="form-control" type="text" name="txtDui" value="" /><br>
            Apellidos:<input class="form-control" type="text" name="txtApellidos" value="" /><br>
            Nombres:<input class="form-control" type="text" name="txtNombre" value="" /><br>
             <input class="btn btn-primary" type="submit" name="accion" value="Registrar Nueva Persona"> 
        </form>
        </div>
             </div>
    </body>
</html>
