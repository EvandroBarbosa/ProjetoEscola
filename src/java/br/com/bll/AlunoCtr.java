package br.com.bll;

import br.com.dal.AlunoDao;
import br.com.model.Aluno;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Evandro
 */
@WebServlet(name="AlunoCtr", urlPatterns = {"/AlunoCtr"})
public class AlunoCtr extends HttpServlet{
    private static final long serialVersionUID = 1l;
    private static String INCLUIR_ALUNO = "aluno.jsp";
    private static String LIST_ALUNO = "listaAluno.jsp";
    private AlunoDao aDao;

    public AlunoCtr() {
        super();
        try {
            aDao = new AlunoDao();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
        
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String emFrente = "";
        String action = req.getParameter("action");        
        
        if (action.equalsIgnoreCase("delete")) {
            int cod = Integer.parseInt(req.getParameter("codigo"));
            aDao.deleteAluno(cod);
            emFrente = LIST_ALUNO;
            req.setAttribute("obListAluno", aDao.listAluno());
        }else if (action.equalsIgnoreCase("edit")) {
            emFrente = INCLUIR_ALUNO;   
            int cod = Integer.parseInt(req.getParameter("codigo"));
            Aluno al = aDao.listaAlunoCod(cod);
            req.setAttribute("obAluno", al);
        }else if (action.equalsIgnoreCase("listaAluno")) {
            emFrente = LIST_ALUNO;
            req.setAttribute("obListAluno", aDao.listAluno());
        }else{
            emFrente = INCLUIR_ALUNO;
        }
        req.setAttribute("valorSexo", "M");
        RequestDispatcher view = req.getRequestDispatcher(emFrente);
        req.setAttribute("obListAluno", aDao.listAluno());
        view.forward(req, resp);
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        Aluno all = new Aluno();
        all.setNomeAluno(req.getParameter("nomeAluno"));
        try {
            Date data = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("dataNascAluno"));
            all.setDataNascAluno(data);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        int matricula = 0;
        
            matricula =  new Random().nextInt(9999);
        
        String matriculaAluno="";
        matriculaAluno = Integer.toString(matricula);
        all.setSexoAluno(req.getParameter("sexoAluno"));
        all.setEnderecoAluno(req.getParameter("enderecoAluno"));
        all.setTelefoneAluno(req.getParameter("telefoneAluno"));
        all.setMatriculaAluno(matriculaAluno);
        all.setCpfAluno(req.getParameter("cpfAluno"));
        String cod = req.getParameter("codigo");
      
        if (cod == null || cod.isEmpty()) {
            aDao.addAluno(all);
        }
        else{
            all.setCodigo(Integer.parseInt(cod));
            aDao.updateAluno(all);
        }
        RequestDispatcher view = req.getRequestDispatcher(LIST_ALUNO);
        req.setAttribute("valorSexo", "M");
        req.setAttribute("obListAluno", aDao.listAluno());
        view.forward(req, resp);
        
    }
    
}
