<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
        <h1>Todos los registros</h1>
      

        <a class="btn btn-success" href="mostrar.do">Mostrar</a> <hr>
        <br>
        <br>
           <table class="table table-bordered table-responsive "  >
		<thead style="background-color:black;color:white">
                    <tr>
                        <th class="text-center">DUI</th>
                        <th class="text-center">APELLIDO</th>
                        <th class="text-center">NOMBRE</th>
                        
                        <th class="text-center" colspan="2">ACCIONES</th>
                       
                    </tr>
                </thead>
                
                  <tbody>
		  <c:forEach var="listaTotal" items="${sessionScope.personas}">
                        
			<tr>
                            
				<td class="text-center"><c:out value="${listaTotal.dui}"/></td>
				<td class="text-center"><c:out value="${listaTotal.apellidos}"/></td>
				<td class="text-center"><c:out value="${listaTotal.nombres}"/></td>
                               <td class="text-center"><a class="btn btn-warning" href="ModificarAB.jsp?dui=<c:out value="${listaTotal.dui}"/>">Editar</a></td>
				 <td class="text-center"><a class="btn btn-danger" href="eliminarAB.jsp?dui=<c:out value="${listaTotal.dui}"/>">Eliminar</a></td>	
			</tr>
                         
		</c:forEach>
                         </tbody
	</table>
        
    </body>
</html>
