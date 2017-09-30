package br.com.dal;

import br.com.model.Aluno;
import br.com.util.Conexao;
import java.sql.Connection;
import java.sql.Date;
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
public class AlunoDao {

    private final Connection cnn;

    public AlunoDao() throws SQLException {
        cnn = Conexao.getConexao();
    }

    public void addAluno(Aluno aluno) {
        try {
            PreparedStatement ps = cnn.prepareStatement("INSERT INTO aluno(nome,datanascimento,sexo,endereco,"
                    + "telefone,matricula,cpf)"
                    + " VALUES(?,?,?,?,?,?,?)");

            ps.setString(1, aluno.getNomeAluno());
            ps.setDate(2, new java.sql.Date (aluno.getDataNascAluno().getTime()));
            ps.setString(3, aluno.getSexoAluno());
            ps.setString(4, aluno.getEnderecoAluno());
            ps.setString(5, aluno.getTelefoneAluno());
            ps.setString(6, aluno.getMatriculaAluno());
            ps.setString(7, aluno.getCpfAluno());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Não foi possive enviar os dados");
            e.printStackTrace();
        }
    }

    public void updateAluno(Aluno aluno) {
        try {
            PreparedStatement ps = cnn.prepareStatement("UPDATE aluno SET nome=?,datanascimento=?,"
                    + "sexo=?,endereco=?,telefone=?,matricula=?,cpf=?)"
                    + " WHERE id=?");

            ps.setString(1, aluno.getNomeAluno());
            ps.setDate(2, new java.sql.Date (aluno.getDataNascAluno().getTime()));
            ps.setString(3, aluno.getSexoAluno());
            ps.setString(4, aluno.getEnderecoAluno());
            ps.setString(5, aluno.getTelefoneAluno());
            ps.setString(6, aluno.getMatriculaAluno());
            ps.setString(7, aluno.getCpfAluno());
            ps.setInt(9, aluno.getCodigo());

            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Não foi possive Alterar os dados");
            e.printStackTrace();
        }

    }

    public void deleteAluno(int codigo) {
        try {
            PreparedStatement ps = cnn.prepareStatement("DELETE FROM aluno"
                    + " WHERE id = ?");
            ps.setInt(1, codigo);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Aluno> listAluno() {
        List<Aluno> dadosAluno = new ArrayList<>();
        try {
            Statement stm = cnn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM aluno");
            
            while (rs.next()) {                
                Aluno al = new Aluno();
                al.setCodigo(rs.getInt("id"));
                al.setNomeAluno(rs.getString("nome"));
                al.setDataNascAluno(rs.getDate("datanascimento"));
                al.setSexoAluno(rs.getString("sexo"));
                al.setEnderecoAluno(rs.getString("endereco"));
                al.setTelefoneAluno(rs.getString("telefone"));
                al.setMatriculaAluno(rs.getString("matricula"));
                al.setCpfAluno(rs.getString("cpf"));
                
                dadosAluno.add(al);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dadosAluno;
    }
     public Aluno listaAlunoCod(int cod){
        Aluno al = new Aluno();
        try {
           PreparedStatement ps = cnn.prepareStatement("SELECT * FROM aluno"
                                                        + " WHERE id = ?");
           ps.setInt(1, cod);
           ResultSet rs = ps.executeQuery();
           
            if (rs.next()) {
                al.setCodigo(rs.getInt("id"));
                al.setNomeAluno(rs.getString("nome"));
                al.setDataNascAluno(rs.getDate("datanascimento"));
                al.setSexoAluno(rs.getString("sexo"));
                al.setEnderecoAluno(rs.getString("endereco"));
                al.setTelefoneAluno(rs.getString("telefone"));
                al.setMatriculaAluno(rs.getString("matricula"));
                al.setCpfAluno(rs.getString("cpf"));
            }
           
        } catch (Exception e) {
            e.getMessage();
        }
        return al;
    }
}
