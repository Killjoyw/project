<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Fresas</h1>
    <form action="fresas.jsp" method="post">
        Kilo de fresas:
        <select name="fresa">
            <option>1kg fresas</option>
            <option>2kg fresas</option>
            <option>3kg fresas</option>
        </select>
        <input type="submit" value="acceptar">
    </form>
    <%
        HttpSession sesion = request.getSession();
        ArrayList<String> listaKekas = (ArrayList<String>) session.getAttribute("slistakekas");
        if (sesion.isNew()){
            int sumados = 0;
            sesion.setAttribute("suma", sumados);
            listaKekas = new ArrayList();
        }
        else{
            int sumados = (Integer.parseInt(sesion.getAttribute("suma").toString()));
            sesion.setAttribute("suma", sumados);
        }
        sesion.setAttribute("slistakekas", listaKekas);
    %>
</body>
</html>