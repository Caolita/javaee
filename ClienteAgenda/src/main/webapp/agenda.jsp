<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Agenda de Contatos</title>
<link rel="icon" href="imagens/agenda.png">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>
	<section class="vh-100" style="background-color: #9A616D;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-xl-10">
					<div class="card" style="border-radius: 1rem;">

						<h1>Agenda de Contatos</h1>

						<a href="novo.html" class="btn btn-dark btn-lg btn-block"
							type="button"> Novo Contato </a>
						<!-- 	<a href="report" class="Botao2"> Relatorio </a> -->
						<table id="tabela" aling="center">
							<thead>
								<tr>
									<th>ID</th>
									<th>Nome</th>
									<th>Telefone</th>
									<th>Email</th>
									<th>Opções</th>
								</tr>
							</thead>
							<tbody>
								<%
								for (int i = 0; i < lista.size(); i++) {
								%>
								<tr>
									<td><%=lista.get(i).getIdcom()%></td>
									<td><%=lista.get(i).getNome()%></td>
									<td><%=lista.get(i).getFone()%></td>
									<td><%=lista.get(i).getEmail()%></td>
									<td><a href="select?idcon=<%=lista.get(i).getIdcom()%>"
										class="Botao1">Editar</a> <a
										href="javascript: confirmar(<%=lista.get(i).getIdcom()%>)"
										class="Botao2">Excluir</a></td>
								</tr>
								<%
								}
								%>


							</tbody>
						</table>
						<br> <a href="report" class="Botao2" align="center">
							Relatorio </a>
						<script src="scripts/confirmador.js"></script>
		</div>
	</div>
	</div>
	</div>
	</section>

</body>
</html>