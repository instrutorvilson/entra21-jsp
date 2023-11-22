<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agenda eletrônica</title>
</head>
<body>
   <div> 
      <h1>Agenda</h1> 
      <form action="gravarContato.jsp" method="POST">
          <label>Informe nome</label>
          <input type="text" placeholder="Informe nome" name="nome">
          
          <label>Informe email</label>
          <input type="text" placeholder="Informe email" name="email">
          
          <button>Gravar</button>
      </form>  
   
   </div>
</body>
</html>