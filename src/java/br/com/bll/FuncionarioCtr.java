package br.com.bll;

import br.com.dal.FuncionarioDao;
import br.com.model.Funcionario;
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
@WebServlet(name="FuncionarioCtr", urlPatterns = {"/FuncionarioCtr"})
public class FuncionarioCtr extends HttpServlet{
    private static final long serialVersionUID= 1l;
    private static String INCLUIR_FUNC = "funcionario.jsp";
    private static String LIST_FUNC = "listaFuncionario.jsp";
    private FuncionarioDao funcDao;

    public FuncionarioCtr() {
        super();
        try {
            funcDao = new FuncionarioDao();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
        
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String emFrente = "";
        String action = req.getParameter("action");
        
        if (action.equalsIgnoreCase("delete")) {
            int cod = Integer.parseInt(req.getParameter("codigo"));
            funcDao.delete(cod);
            emFrente = LIST_FUNC;
            req.setAttribute("obListFunc", funcDao.listFuncionario());
        }else if (action.equalsIgnoreCase("edit")) {
            emFrente = INCLUIR_FUNC;
            int cod = Integer.parseInt(req.getParameter("codigo"));
            Funcionario func = funcDao.listaFuncCod(cod);
            req.setAttribute("obFunc", func);
        }else if (action.equalsIgnoreCase("listaFuncionario")) {
            emFrente = LIST_FUNC;
            req.setAttribute("obListFunc", funcDao.listFuncionario());
        }else{
            emFrente = INCLUIR_FUNC;
        }
        req.setAttribute("valorSexo", "M");
        req.setAttribute("valorTipo", "true");
        RequestDispatcher view = req.getRequestDispatcher(emFrente);
        view.forward(req, resp);
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        Funcionario func = new Funcionario();
        func.setNomeFunc(req.getParameter("nomeFunc"));
        func.setCpfFunc(req.getParameter("cpfFunc"));
        func.setEnderecoFunc(req.getParameter("enderecoFunc"));
        func.setTipoFunc(req.getParameter("tipoFunc").isEmpty());
        func.setTelefoneFunc(req.getParameter("telefoneFunc"));
        func.setEmailFunc(req.getParameter("emailFunc"));
        func.setSexoFunc(req.getParameter("sexoFunc"));
        
        try {
            Date datacad = new SimpleDateFormat("yyyy-MM-dd").parse(req.getParameter("dataNascFunc"));
            func.setDataNascFunc(datacad);
        } catch (Exception e) {
            e.printStackTrace();
        }
        String cod = req.getParameter("codigo");
        if (cod == null || cod.isEmpty()) {
            funcDao.addFuncionario(func);
            
        }else{
            func.setCodigo(Integer.parseInt(cod));
            funcDao.updateFucionario(func);
        }
        
        RequestDispatcher view = req.getRequestDispatcher(LIST_FUNC);
        req.setAttribute("valorSexo", "M");
        req.setAttribute("valorTipo", "true");
        req.setAttribute("obListFunc", funcDao.listFuncionario());
        view.forward(req, resp);
    }
}
