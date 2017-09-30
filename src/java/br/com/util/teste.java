package br.com.util;

import br.com.dal.AlunoDao;
import br.com.model.Aluno;
import java.sql.SQLException;

/**
 *
 * @author Evandro
 */
public class teste {
    public static void main(String[] args) {
        Aluno al = new Aluno();
        
        al.setNomeAluno("valdo");
        al.setEnderecoAluno("Rya t");
        al.setSexoAluno("M");
        al.setTelefoneAluno("4324324");
        al.setMatriculaAluno("001bc");
        al.setCpfAluno("43243234");
        
        try {
            AlunoDao ad = new AlunoDao();
            
            ad.addAluno(al);
        } catch (Exception e) {
        }
        if (al.getCodigo()!= 0) {
            System.out.println("Inserçao com sucesso");
            
        }else{
            System.out.println("Deu problema");
        }
    }
}
