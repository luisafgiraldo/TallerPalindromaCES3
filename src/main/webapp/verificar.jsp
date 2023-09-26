<!--
  Created by IntelliJ IDEA.
  User: User
  Date: 25/09/2023
  Time: 9:18 p. m.
  To change this template use File | Settings | File Templates.
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Resultado</h1>
    <%
        String palabra = request.getParameter("palabra");
        String resultado = "La palabra no es un palíndromo";
        String[] letras = palabra.split("");

        // Lógica para verificar si la palabra es un palíndromo
        if (esPalindromo(palabra)) {
            resultado = "La palabra es un palíndromo";
        }
    %>
    <p>Palabra ingresada: <%= palabra %></p>
    <p><%= resultado %></p>
    <table class="table">
        <thead>
        <tr>
            <th>Letra</th>
        </tr>
        </thead>
        <tbody>
        <% for (String letra : letras) { %>
        <tr>
            <td><%= letra %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <a href="index.jsp" class="btn btn-primary">Volver</a>
</div>
</body>
</html>

<%!
    // Método para verificar si una palabra es un palíndromo
    public boolean esPalindromo(String palabra) {
        String palabraInvertida = new StringBuilder(palabra).reverse().toString();
        return palabra.equalsIgnoreCase(palabraInvertida);
    }
%>
