<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Eliminar</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >Registro de Persona</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="indexAB.jsp">Inicio</a></li>
      <li><a href="mostrartodoAB.jsp">Mostrar</a></li>
     
    </ul>
  </div>
</nav>
        <div class="container">
              <div class="col-lg-6">
        <a class="btn btn-success" href="mostrartodoAB.jsp">mostrar</a>
       
        <h1>Eliminar</h1>

        <form action="EliminarAB" method="post">
            DUI:<input class="form-control" type="text" name="txtDui" value="<%=request.getParameter("dui")%>" /> 
            <br>
           
            <input class="btn btn-danger" type="Submit" value="Eliminar Registro" name="delete" />
        </form>
              </div>
        </div>
    </body>
</html>
