<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Carrito</h1>
        <%
            HttpSession sesion = request.getSession();
            int cuantos;
            ArrayList<String>lista = new ArrayList();
            int total = (Integer.parseInt(session.getAttribute("suma").toString()));
            lista = (ArrayList<String>) session.getAttribute("slistakekas");
            
            cuantos = lista.size();
            for(int i=0; i < cuantos; ++i)
                out.println(lista.get(i)+"<br><br>");
            out.println("Usted lleva :$"+total+"<br><br>");
            session.setAttribute("slistakekas", lista);
            out.println("<a href='productos.html'>Buscar más productos</a><br><br>");
            out.println("<a href='pagar.jsp'>pagar</a>");
            out.println("<br><br>");
            out.println("<a href='index.html'>Página de inicio</a>");
            
        %>
    </body>
</html>