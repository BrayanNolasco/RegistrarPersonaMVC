<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar</title>
    </head>
    <body>
        <a href="mostrartodoAB.jsp">mostrar</a>
        <%=request.getParameter("mag")%>
        <h1>Eliminar</h1>

        <form action="EliminarAB" method="post">
            DUI:<input type="text" name="txtDui" value="" /> 
            <br>
           
            <input type="Submit" value="Eliminar Registro" name="delete" />
        </form>
    </body>
</html>
