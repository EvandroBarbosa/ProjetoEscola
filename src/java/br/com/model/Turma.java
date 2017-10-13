package br.com.model;

/**
 *
 * @author Evandro
 */
public class Turma {
    private int codigo;
    private String idTurma;
    private Aluno nomeAluno;
    private String periodo;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getIdTurma() {
        return idTurma;
    }

    public void setIdTurma(String idTurma) {
        this.idTurma = idTurma;
    }

    public Aluno getNomeAluno() {
        return nomeAluno;
    }

    public void setNomeAluno(Aluno nomeAluno) {
        this.nomeAluno = nomeAluno;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }       
    
}
