<%@page import="modelos.Contato"%>
<%@page import="java.util.List"%>
<%@page import="dao.DaoContato"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consulta contatos</title>
</head>
<body>
    <nav>
         include com os links
    </nav>
    <table>
        <thead>
            <tr>
               <th>Id</th>
               <th>Nome</th>
               <th>Email</th>
            </tr>
        </thead>
        <tbody>
           <%
             List<Contato> contatos = DaoContato.consultar();
             for(Contato ct : contatos){
            	 out.print("<tr>");
            	 out.print("<td>"+ ct.getId() +"</td>");
            	 out.print("<td>"+ ct.getNome()+"</td>");
            	 out.print("<td>"+ ct.getEmail() +"</td>");
            	 out.print("</tr>");
             }
           %>
        </tbody>
    </table>
</body>
</html>