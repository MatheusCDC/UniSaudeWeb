<%@page import="UniSaudeWeb.model.Aluno"%>
<%@page import="UniSaudeWeb.dao.AlunoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
	
<title>Edição Aluno</title>
</head>
<body>

<%
	long alunoid = Long.parseLong(request.getParameter("id"));
	AlunoDao dao = new AlunoDao();
	Aluno aluno = dao.findById(Aluno.class, alunoid).get();
%>

<h1>Editar Aluno</h1>
	
	<form action="controllerAluno" method="post">
		<input type="hidden" name="alunoid" value="<%= alunoid %>"/>
			
			<label>Nome</label>
			<input type="text" name="nome" value="<%= aluno.getNome() %>"/>
			<br/>
			
			<label>Email</label>
			<input type="text" name="email" value="<%= aluno.getEmail() %>"/>
			<br/>
			
			<label>Nivel do Aluno</label>
			<input type="text" name="nivelAluno" value="<%= aluno.getNivelaluno() %>"/>
			<br/>
			
			<input type="submit" value="Salvar"/>
		
		</form>

</body>
</html>