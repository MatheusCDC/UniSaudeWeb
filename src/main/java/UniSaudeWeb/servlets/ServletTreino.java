package UniSaudeWeb.servlets;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UniSaudeWeb.dao.AlunoDao;
import UniSaudeWeb.dao.AparelhosDao;
import UniSaudeWeb.dao.TreinoAparelhoDao;
import UniSaudeWeb.dao.TreinoDao;
import UniSaudeWeb.model.Aluno;
import UniSaudeWeb.model.Aparelhos;
import UniSaudeWeb.model.NivelAluno;
import UniSaudeWeb.model.TipoTreino;
import UniSaudeWeb.model.Treino;
import UniSaudeWeb.model.TreinoAparelho;

/**
 * Servlet implementation class ServletTreino
 */
@WebServlet({ "/ServletTreino", "/controllerTreino" })
public class ServletTreino extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletTreino() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		TreinoDao dao = new TreinoDao();
		
		long treinoid = Long.parseLong(request.getParameter("id"));
		Treino deletarTreino = dao.findById(Treino.class, treinoid).get();
		
		dao.delete(deletarTreino);		
	
	response.sendRedirect("consultaAluno.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		TreinoDao dao = new TreinoDao();
		

		System.out.println(request.getParameter("treinoid") +"entrei no post kkkkkkkkkkkkk");
		
		if (request.getParameter("treinoid") == null) {		
			
			AlunoDao daoAluno = new AlunoDao();
			long alunos = Long.parseLong(request.getParameter("id"));
			Aluno aluno = daoAluno.findById(Aluno.class, alunos).get();
			Treino novoTreino = new Treino();
			novoTreino.setNomeExecicio(request.getParameter("nomeExercicio"));
			novoTreino.setTipoTreino(TipoTreino.valueOf(request.getParameter("tipoTreino").toUpperCase()));
			novoTreino.setRepeticao(request.getParameter("repeticao"));
			novoTreino.setSerie(request.getParameter("serie"));
			novoTreino.setFicha(request.getParameter("ficha"));
			
			novoTreino.setAluno(aluno);
												
			dao.save(novoTreino);
		}
		else {
			
			long treinoid = Long.parseLong(request.getParameter("treinoid"));
			Treino treinos = dao.findById(Treino.class, treinoid).get();
			
			System.out.println("elsebtebrsbrgsbrtsbrtsbrtsbrtsbtrbtrgbrtbrtbtg af");
			treinos.setNomeExecicio(request.getParameter("nomeExercicio"));
			treinos.setTipoTreino(TipoTreino.valueOf(request.getParameter("tipoTreino").toUpperCase()));
			treinos.setRepeticao(request.getParameter("repeticao"));
			treinos.setSerie(request.getParameter("serie"));
			treinos.setFicha(request.getParameter("ficha"));
			
			dao.update(treinos);
			}
		
		response.sendRedirect("consultaAluno.jsp");
	}

}
