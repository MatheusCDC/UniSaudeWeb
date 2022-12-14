<%@page import="UniSaudeWeb.model.Treino"%>
<%@page import="java.util.List"%>
<%@page import="UniSaudeWeb.dao.TreinoDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="utf-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="./styles/main.css">
	
<title>Cadastro Aparelho</title>
</head>
  <body>
    <div class="topnav">
      <div>
        <!-- <a href="/sobre">Sobre nós</a> -->
        <nav id="nav">
          <button aria-label="Abrir Menu" id="btn-mobile" aria-haspopup="true" aria-controls="menu" aria-expanded="false">
            <span id="hamburger"></span>
          </button>
          <ul id="menu" role="menu">
            <li><a href="consultaAluno.jsp">Aluno</a></li>
            <li><a href="consultaTreino.jsp">Treino</a></li>
            <li><a href="consultaMedidas.jsp">Medidas</a></li>
            <li><a href="consultaAparelho.jsp">Aparelhos</a></li>
          </ul>
        </nav>
      </div>
      <div class="alingMenu">
        <a src="./Home.html"><img class="home" src="./img/img.png" /></a>
        <!--     <a class="active" href="#home"><img class="loginIcon" src="./img/login.png"/> Entrar</a> -->
      </div>
    </div>
    <div class="bodyAluno">
      <div class="alignRegister">
        <div>
          <a href="consultaAparelho.jsp" class="back">
            < Voltar</a>
              <h1>Cadastrar Aparelho</h1>
              <form action="controllerAparelhos" method="post">
                
                <div class="register">
                  <div class="line">
                    <div class="group">
                      <p>Nome do Aparelho:</p>
                      <input type="text" name="nomeAparelho" />
                    </div>
                    <div class="group">
                      <p>Função do Aparelho:</p>
                      <input name="funcaoAparelho" type="text">
                    </div>
                  </div>

                  <div class="line">
                    <div class="btnRegister">
                      <p></p>
                      <input type="submit" value="Cadastrar" />
                    </div>
                  </div>
              </form>
        </div>
      </div>
    </div>
  </body>
</html>
        <script>
            const btnMobile = document.getElementById('btn-mobile');

            function toggleMenu(event) {
              if (event.type === 'touchstart') event.preventDefault();
              const nav = document.getElementById('nav');
              nav.classList.toggle('active');
              const active = nav.classList.contains('active');
              event.currentTarget.setAttribute('aria-expanded', active);
              if (active) {
                event.currentTarget.setAttribute('aria-label', 'Fechar Menu');
              } else {
                event.currentTarget.setAttribute('aria-label', 'Abrir Menu');
              }
            }

            btnMobile.addEventListener('click', toggleMenu);
            btnMobile.addEventListener('touchstart', toggleMenu);
        </script>