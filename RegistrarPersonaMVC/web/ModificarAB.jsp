<%@page import="modelo.PersonaAB"%>
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
        <a class="btn btn-danger" href="mostrar.do">Mostrar</a>
      
            
     <h1>Actualizar </h1>
    
     <form action="ModificarAB" method="post">
		
              DUI:<input class="form-control" type="text" name="txtDui" value="<%=request.getParameter("dui")%>" /><br>
            Apellidos:<input class="form-control" type="text" name="txtApellidos" /><br>
            Nombres:<input class="form-control" type="text" name="txtNombres"  /><br>
         
	
                     <input class="btn btn-primary" type="submit" name="actualizar" value="Guardar"> 
	</form>
              </div>
             </div>
    </body>
</html>
