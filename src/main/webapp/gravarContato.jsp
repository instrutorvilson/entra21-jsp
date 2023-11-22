<%@page import="controlador.ContatoController"%>
<%@page import="modelos.Contato"%>
<%@ page language="java" import="java.lang.*"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String nome = request.getParameter("nome");
   String email = request.getParameter("email");
   
   Contato contato = new Contato(0,nome, email);
   ContatoController cc = new ContatoController();
   
   if(cc.salvar(contato)){
	   response.sendRedirect("./consultaContato.jsp");
   }
   
  // out.print("opa" + contato.toString());  
%>