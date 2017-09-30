package br.com.bll;

import br.com.dal.DisciplinaDao;
import br.com.model.Disciplina;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
@WebServlet(name="DisciplinaCtr ", urlPatterns = {"/DisciplinaCtr"})
public class DisciplinaCtr extends HttpServlet{
    private static final long serialVersionUID = 1l;
    private static String INCLUIR_DISC = "disciplina.jsp";
    private static String LIST_DISC = "listaDisciplina.jsp";
    private DisciplinaDao discDao;
    public DisciplinaCtr() {
        super();
        try {
            discDao = new DisciplinaDao();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
        
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String emFrente = "";
        String action = req.getParameter("action");
        
        if (action.equalsIgnoreCase("delete")) {
            int cod = Integer.parseInt(req.getParameter("codigo"));
            discDao.delete(cod);
            emFrente = LIST_DISC;
            req.setAttribute("obListDisc", discDao.listDisciplina());
        }else if (action.equalsIgnoreCase("edit")) {
            emFrente = INCLUIR_DISC;
            int cod = Integer.parseInt(req.getParameter("codigo"));
            Disciplina disc = discDao.listaDiscCod(cod);
            req.setAttribute("obDisc", disc);
        }else if (action.equalsIgnoreCase("listaDisciplina")) {
            emFrente = LIST_DISC;
            req.setAttribute("obListDisc", discDao.listDisciplina());
        }else{
            emFrente = INCLUIR_DISC;
        }
        RequestDispatcher view = req.getRequestDispatcher(emFrente);
        view.forward(req, resp);
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        Disciplina disc = new Disciplina();
        disc.setCodigoDisc(req.getParameter("codigoDisc"));
        disc.setNomeDisc(req.getParameter("nomeDisc"));
        disc.setDescricaoDisc(req.getParameter("descricaoDisc"));
        
        try {
            Date datacad = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("dataCadastroDisc"));
            disc.setDataCadastroDisc(datacad);
        } catch (Exception e) {
            e.printStackTrace();
        }
        disc.setCargaHorariaDisc(req.getParameter("cargaHorariaDisc"));
        disc.setConteudoDisc(req.getParameter("conteudoDisc"));
        
        String cod = req.getParameter("codigo");
        if (cod != null || cod.isEmpty()) {
            discDao.addDisciplina(disc);
        }else{
            disc.setCodigo(Integer.parseInt(cod));
            discDao.updateDisciplina(disc);
        }
        
        RequestDispatcher view = req.getRequestDispatcher(LIST_DISC);
         req.setAttribute("obListDisc", discDao.listDisciplina());
        view.forward(req, resp);
    }
}
