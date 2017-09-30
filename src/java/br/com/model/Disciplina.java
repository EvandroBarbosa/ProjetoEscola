package br.com.model;

import java.util.Date;

/**
 *
 * @author Evandro
 */
public class Disciplina {
    private int codigo;
    private String codigoDisc;
    private String nomeDisc;
    private String descricaoDisc;
    private Date dataCadastroDisc;
    private String cargaHorariaDisc;
    private String conteudoDisc;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getCodigoDisc() {
        return codigoDisc;
    }

    public void setCodigoDisc(String codigoDisc) {
        this.codigoDisc = codigoDisc;
    }

    public String getNomeDisc() {
        return nomeDisc;
    }

    public void setNomeDisc(String nomeDisc) {
        this.nomeDisc = nomeDisc;
    }

    public String getDescricaoDisc() {
        return descricaoDisc;
    }

    public void setDescricaoDisc(String descricaoDisc) {
        this.descricaoDisc = descricaoDisc;
    }

    public Date getDataCadastroDisc() {
        return dataCadastroDisc;
    }

    public void setDataCadastroDisc(Date dataCadastroDisc) {
        this.dataCadastroDisc = dataCadastroDisc;
    }

    public String getCargaHorariaDisc() {
        return cargaHorariaDisc;
    }

    public void setCargaHorariaDisc(String cargaHorariaDisc) {
        this.cargaHorariaDisc = cargaHorariaDisc;
    }

    public String getConteudoDisc() {
        return conteudoDisc;
    }

    public void setConteudoDisc(String conteudoDisc) {
        this.conteudoDisc = conteudoDisc;
    }
    
    
}
