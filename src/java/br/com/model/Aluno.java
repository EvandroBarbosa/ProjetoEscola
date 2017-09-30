package br.com.model;

import java.util.Date;

/**
 *
 * @author Evandro
 */
public class Aluno {
    private int codigo;
    private String nomeAluno;
    private String cpfAluno;
    private Date dataNascAluno;
    private String matriculaAluno;
    private String sexoAluno;
    private String enderecoAluno;
    private String telefoneAluno;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNomeAluno() {
        return nomeAluno;
    }

    public void setNomeAluno(String nomeAluno) {
        this.nomeAluno = nomeAluno;
    }

    public String getCpfAluno() {
        return cpfAluno;
    }

    public void setCpfAluno(String cpfAluno) {
        this.cpfAluno = cpfAluno;
    }

    public Date getDataNascAluno() {
        return dataNascAluno;
    }

    public void setDataNascAluno(Date dataNascAluno) {
        this.dataNascAluno = dataNascAluno;
    }

    public String getMatriculaAluno() {
        return matriculaAluno;
    }

    public void setMatriculaAluno(String matriculaAluno) {
        this.matriculaAluno = matriculaAluno;
    }

    public String getSexoAluno() {
        return sexoAluno;
    }

    public void setSexoAluno(String sexoAluno) {
        this.sexoAluno = sexoAluno;
    }

    public String getEnderecoAluno() {
        return enderecoAluno;
    }

    public void setEnderecoAluno(String enderecoAluno) {
        this.enderecoAluno = enderecoAluno;
    }

    public String getTelefoneAluno() {
        return telefoneAluno;
    }

    public void setTelefoneAluno(String telefoneAluno) {
        this.telefoneAluno = telefoneAluno;
    }   
    
}
