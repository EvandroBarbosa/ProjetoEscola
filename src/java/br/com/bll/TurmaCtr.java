package br.com.bll;

import br.com.dal.AlunoDao;
import br.com.dal.TurmaDao;
import br.com.model.Aluno;
import br.com.model.Turma;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Dispatch;

/**
 *
 * @author Evandro
 */
@WebServlet("/TurmaCtr")
public class TurmaCtr extends HttpServlet{
    private static final long serialVersionUID = 1l;
    private static String INCLUIR_TURMA = "turma.jsp";
    
    private TurmaDao tDao;
    private AlunoDao alDao;

    public TurmaCtr() throws SQLException {
        super();
        tDao = new TurmaDao();
        alDao = new AlunoDao();
    }   
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String action = req.getParameter("action");
       
        if (action.equalsIgnoreCase("delete")) {
            int cod = Integer.parseInt(req.getParameter("codigo"));
            tDao.excluir(cod);
        }
        if (action.equalsIgnoreCase("alterar")) {
           try {
               int cod = Integer.parseInt(req.getParameter("codigo"));
               
               Turma tur = tDao.ConsultaPorId(cod);
               
               req.setAttribute("turma", tur);
               
           } catch (SQLException ex) {
               ex.printStackTrace();
           }
        }
       
        RequestDispatcher view = req.getRequestDispatcher(INCLUIR_TURMA);
        req.setAttribute("turmas", tDao.ListarTurma());
        req.setAttribute("aluno", alDao.listAluno());
        view.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Turma turma = new Turma();
        turma.setNomeAluno(new Aluno());
        
        turma.getNomeAluno().setCodigo(Integer.parseInt(req.getParameter("codigo")));
        turma.setPeriodo(req.getParameter("perido"));
        turma.setIdTurma(req.getParameter("idturma"));
        
        String codigo = req.getParameter("codigo");
        
        if (codigo == null || codigo.isEmpty()) {
            tDao.addTurma(turma);
        }else{
            turma.setCodigo(Integer.parseInt(codigo));
            tDao.alterar(turma);
        }
        
        RequestDispatcher view = req.getRequestDispatcher(INCLUIR_TURMA);
        req.setAttribute("turmas", tDao.ListarTurma());
        view.forward(req, resp);
        
    }

    
    
    
}
