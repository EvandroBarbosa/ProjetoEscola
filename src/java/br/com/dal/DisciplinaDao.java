package br.com.dal;

import br.com.model.Disciplina;
import br.com.util.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Evandro
 */
public class DisciplinaDao {
    private Connection cnn;

    public DisciplinaDao() throws SQLException {
        cnn = Conexao.getConexao();
    }

    public void addDisciplina(Disciplina disc){
         try {
            PreparedStatement ps = cnn.prepareStatement("INSERT INTO disciplina"
                    + "(codigodisc,nome,descricao,datacadastro,cargahoraria,conteudo)"
                    + "VALUES(?,?,?,?,?,?)");                    
                    
                    ps.setString(1, disc.getCodigoDisc());
                    ps.setString(2, disc.getNomeDisc());
                    ps.setString(3, disc.getDescricaoDisc());
                    ps.setDate(4, new java.sql.Date (disc.getDataCadastroDisc().getTime()));
                    ps.setString(5, disc.getCargaHorariaDisc());
                    ps.setString(6, disc.getConteudoDisc());
                    
                    ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Não foi possivel enviar os dados");
            e.printStackTrace();
        }
    }
    public void updateDisciplina(Disciplina disc){
         try {
            PreparedStatement ps = cnn.prepareStatement("UPDATE disciplina SET"
                    + "codigodisc=?,nome=?,descricao=?,datacadastro=?,cargahoraria=?,conteudo=?"
                    + " WHERE id = ?");                    
                    
                    ps.setString(1, disc.getCodigoDisc());
                    ps.setString(2, disc.getNomeDisc());
                    ps.setString(3, disc.getDescricaoDisc());
                    ps.setDate(4, new java.sql.Date(disc.getDataCadastroDisc().getTime()));
                    ps.setString(5, disc.getCargaHorariaDisc());
                    ps.setString(6, disc.getConteudoDisc());
                    ps.setInt(7, disc.getCodigo());
                    
                    ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Não foi possivel alterar os dados");
            e.printStackTrace();
        }
    }
    public void delete(int codigo){
         try {
            PreparedStatement ps = cnn.prepareStatement("DELETE FROM disciplina Where id = ?");                    
                    
                   
                    ps.setInt(1, codigo);
                    
                    ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Não foi possivel deletar os dados");
            e.printStackTrace();
        }
    }
    
    public List<Disciplina> listDisciplina(){
        List<Disciplina> dadosDisc = new ArrayList<>();
        try {
            Statement stm = cnn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM disciplina");
            
            while (rs.next()) {                
                Disciplina disc = new Disciplina();
                disc.setCodigo(rs.getInt("id"));
                disc.setCodigoDisc(rs.getString("codigodisc"));
                disc.setNomeDisc(rs.getString("nome"));
                disc.setDescricaoDisc(rs.getString("descricao"));
                disc.setDataCadastroDisc(rs.getDate("datacadastro"));
                disc.setCargaHorariaDisc(rs.getString("cargahoraria"));
                disc.setConteudoDisc(rs.getString("conteudo"));
                
                dadosDisc.add(disc);
            }
        } catch (SQLException e) {
            System.out.println("Não foi possivel listar os dados");
            e.printStackTrace();
        }
        return dadosDisc;
    }
    
    public Disciplina listaDiscCod(int cod){
        Disciplina disc = new Disciplina();
        try {
            PreparedStatement ps = cnn.prepareStatement("SELECT * FROM disciplina"
                                                        + " WHERE id = ?");
            
            ps.setInt(1, cod);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                disc.setCodigo(rs.getInt("id"));
                disc.setCodigoDisc(rs.getString("codigodisc"));
                disc.setNomeDisc(rs.getString("nome"));
                disc.setDescricaoDisc(rs.getString("descricao"));
                disc.setDataCadastroDisc(rs.getDate("datacadastro"));
                disc.setCargaHorariaDisc(rs.getString("cargahoraria"));
                disc.setConteudoDisc(rs.getString("conteudo"));
            }
        } catch (Exception e) {
            e.getMessage();
        }
        return disc;
    }
}
