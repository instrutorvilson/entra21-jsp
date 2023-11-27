<%@page import="controlador.ContatoController"%>
<%@page import="modelos.Contato"%>
<%@ page language="java" import="java.lang.*"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String idContato = request.getParameter("idContato");
   String nome = request.getParameter("nome");
   String email = request.getParameter("email");
   
   Contato contato = new Contato(Integer.parseInt(idContato),nome, email);
   ContatoController cc = new ContatoController();
   
   if(cc.editar(contato)){
	   response.sendRedirect("./consultaContato.jsp");
   }
   
  // out.print("opa" + contato.toString());  
%>