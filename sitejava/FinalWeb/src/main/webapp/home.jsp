<!DOCTYPE html>
<%@page import="modelo.Usuario"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<nav>
    <div class="logo">VT</div>
    <input type="checkbox" id="click">
    <label for="click" class="menu-btn">
      <i class="fas fa-bars"></i>
    </label>
    <ul>
   
        
      
      <li><a class="active" href="#">Home</a></li>
      <li><a href="#">sobre</a></li>
      <li><a href="#">Servicos</a></li>
      <li><a href="LogoutServlet">Sair</a></li>
       </ul> 
       </nav>
       
       <%
       List<Usuario> lista = (List<Usuario>)session.getAttribute("lista");
       %>
       
       <div class="tabela">
    
       
       <table>
       <tr>
       <td>usuario</td>
        <td>nome</td>
        <td>email</td>
       </tr>
       
        <%
       for(Usuario usuario:lista){
    	   out.write("<tr>");
    	   out.write("<td>" + usuario.getUsuario() + "</td>");
    	   out.write("<td>" + usuario.getNome() + "</td>");
    	   out.write("<td>" + usuario.getEmail() + "</td>");
       }
       %>
       
       </table>
       
       
       </div>
  </body>