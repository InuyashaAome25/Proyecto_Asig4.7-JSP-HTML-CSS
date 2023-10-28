<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="TablaMulti.multiplicaciónTabla" %>

<!DOCTYPE html>
<html>
<head>
    <title>Asignación 4.7</title>
    <link rel="stylesheet" href="CSS/Plantilla.css">
</head>
<body>
    <header> <h1>Tabla de multiplicación del 1 al 10</h1> </header>
    <nav>

    </nav>
    <main>
        <h1>tablas de multiplicación</h1>
        <form method="post">
            Tabla de inicio: <input type="text" name="inicio">
            Tabla de fin: <input type="text" name="final">
            <input type="submit" value="Generar">
        </form>
        
        <%
            if (request.getMethod().equals("POST")) {
                int inicio = Integer.parseInt(request.getParameter("inicio"));
                int aFinal = Integer.parseInt(request.getParameter("final"));
                multiplicaciónTabla multiplcaciónTabla = null;
                String multiTabla = multiplcaciónTabla.generarMulti(inicio, aFinal);
        %>
        <%= multiTabla%>
        <%
            }
        %>
    </main>
    <footer>

    </footer>
</body>
</html>