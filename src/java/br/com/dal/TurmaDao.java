package br.com.dal;

import br.com.model.Turma;
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
public class TurmaDao {
    private Connection cnn;

    public TurmaDao() {
        try {
            cnn = Conexao.getConexao();
        } catch (SQLException err) {
            err.printStackTrace();
        }
    }
    
    //Adicionar na turma
    public Turma addTurma(Turma turma){
        try {
            PreparedStatement ps = cnn.prepareStatement("INSERT INTO turma (id_aluno,periodo,idturma)"
                    + "VALUES(?,?,?) RETURNING id ");
            
            //Seta os valores do objeto
            ps.setInt(1, turma.getNomeAluno().getCodigo());
            ps.setString(2, turma.getPeriodo());
            ps.setString(3, turma.getIdTurma());
            //Cria um resultSet para receber o objeto turma
            ResultSet rs = ps.executeQuery();
            
            //Cria uma condicional para retornar os dados do objeto turma
            if (rs.next()) {
                return ConsultaPorId(rs.getInt("id"));
            }
            
        } catch (SQLException e) {
            System.out.println("Não foi possivel gravar os dados");
        }
        return null;
    }
    
    //Retirar da turma
    public void excluir(int cod){
        try {
            PreparedStatement ps = cnn.prepareStatement("DELETE FROM turma WHERE id=? ");
            ps.setInt(1, cod);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Não foi possivel excluir");
        }
    }
    
    //Alterar a turma
    public void alterar(Turma turma){
        try {
            PreparedStatement ps = cnn.prepareStatement("UPDATE turma SET id_aluno=?, periodo=?,"
                                                        + " idturma=? WHERE id=? ");
            ps.setInt(1, turma.getNomeAluno().getCodigo());
            ps.setString(2, turma.getPeriodo());
            ps.setString(3, turma.getIdTurma());
            ps.setInt(4, turma.getCodigo());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Não foi possivel alterar");
        }
    }
    
    //Consultar na turma
    public Turma ConsultaPorId(int cod) throws SQLException {
        Turma tur = new Turma();
        AlunoDao al = new AlunoDao();
        try {
            PreparedStatement ps = cnn.prepareStatement("SELECT * FROM turma t, aluno al WHERE t.id_aluno = al.id AND id=?");
            ps.setInt(1, cod);
            
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                tur.setCodigo(rs.getInt("codigo"));
                tur.setNomeAluno(al.listaAlunoCod(rs.getInt("codigo")));
                tur.setPeriodo(rs.getString("periodo"));
                tur.setIdTurma(rs.getString("idTurma"));
            }
        } catch (Exception e) {
            System.out.println("A consulta falhou");
        }
        return tur;
    }
    
    //Trazer uma lista da turma
    public List<Turma> ListarTurma(){
        List<Turma> listTur = new ArrayList<>();
        try {
            Statement stm = cnn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM turma t, aluno al WHERE t.id_aluno = al.id");
            
            while (rs.next()) {                
                Turma tur = new Turma();
                tur.setCodigo(rs.getInt("codigo"));
                tur.setNomeAluno(new AlunoDao().listaAlunoCod(rs.getInt("codigo")));
                tur.setPeriodo(rs.getString("perido"));
                tur.setIdTurma(rs.getString("idTurma"));
                
                listTur.add(tur);
            }
        } catch (Exception e) {
            System.out.println("Não foi possivel Trazer a lista");
        }
        return listTur;
    }
}
