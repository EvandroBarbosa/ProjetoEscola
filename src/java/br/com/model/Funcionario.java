package br.com.model;

import java.util.Date;

/**
 *
 * @author Evandro
 */
public class Funcionario {
    private int codigo;
    private String nomeFunc;
    private String cpfFunc;
    private String enderecoFunc;
    private boolean tipoFunc;
    private String telefoneFunc;
    private String emailFunc;
    private String sexoFunc;
    private Date dataNascFunc;

    public Date getDataNascFunc() {
        return dataNascFunc;
    }

    public void setDataNascFunc(Date dataNascFunc) {
        this.dataNascFunc = dataNascFunc;
    }    

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNomeFunc() {
        return nomeFunc;
    }

    public void setNomeFunc(String nomeFunc) {
        this.nomeFunc = nomeFunc;
    }

    public String getCpfFunc() {
        return cpfFunc;
    }

    public void setCpfFunc(String cpfFunc) {
        this.cpfFunc = cpfFunc;
    }

    public String getEnderecoFunc() {
        return enderecoFunc;
    }

    public void setEnderecoFunc(String enderecoFunc) {
        this.enderecoFunc = enderecoFunc;
    }

    public boolean getTipoFunc() {
        return tipoFunc;
    }

    public void setTipoFunc(boolean tipoFunc) {
        this.tipoFunc = tipoFunc;
    }

    public String getTelefoneFunc() {
        return telefoneFunc;
    }

    public void setTelefoneFunc(String telefoneFunc) {
        this.telefoneFunc = telefoneFunc;
    }

    public String getEmailFunc() {
        return emailFunc;
    }

    public void setEmailFunc(String emailFunc) {
        this.emailFunc = emailFunc;
    }

    public String getSexoFunc() {
        return sexoFunc;
    }

    public void setSexoFunc(String sexoFunc) {
        this.sexoFunc = sexoFunc;
    }
    
    
}
