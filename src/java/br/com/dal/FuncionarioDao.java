package br.com.dal;

import br.com.model.Funcionario;
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
public class FuncionarioDao {
    private Connection cnn;

    public FuncionarioDao() throws SQLException {
        cnn = Conexao.getConexao();
    }
    
    
    
    public void addFuncionario(Funcionario func){
        try {
            PreparedStatement ps = cnn.prepareStatement("INSERT INTO funcionario"
                    + "(nome,cpf,endereco,tipo,telefone,email,sexo,datanasc)"
                    + "VALUES(?,?,?,?,?,?,?,?)");
            
                    ps.setString(1, func.getNomeFunc());
                    ps.setString(2, func.getCpfFunc());
                    ps.setString(3, func.getEnderecoFunc());
                    ps.setBoolean(4, func.getTipoFunc());
                    ps.setString(5, func.getTelefoneFunc());
                    ps.setString(6, func.getEmailFunc());
                    ps.setString(7, func.getSexoFunc());
                    ps.setDate(8, new java.sql.Date (func.getDataNascFunc().getTime()));
                    
                    ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Não foi possivel enviar os dados");
            e.printStackTrace();
        }
    }
    public void updateFucionario(Funcionario func){
         try {
             PreparedStatement ps = cnn.prepareStatement("UPDATE funcionario SET"
                    + "nome=?,cpf=?,endereco=?,tipo=?,telefone=?,email=?,sexo=? datanasc=?"
                    + " WHERE id = ?");
            
                    ps.setString(1, func.getNomeFunc());
                    ps.setString(2, func.getCpfFunc());
                    ps.setString(3, func.getEnderecoFunc());
                    ps.setBoolean(4, func.getTipoFunc());
                    ps.setString(5, func.getTelefoneFunc());
                    ps.setString(6, func.getEmailFunc());
                    ps.setString(7, func.getSexoFunc());
                    ps.setDate(8, new java.sql.Date (func.getDataNascFunc().getTime()));
                    ps.setInt(9, func.getCodigo());
                    
                    ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Não foi possivel alterar os dados");
            e.printStackTrace();
        }
    }
    public void delete(int codigo){
         try {
             PreparedStatement ps = cnn.prepareStatement("DELETE FROM funcionario"
                                                         + " WHERE id=?");
                                
                    ps.setInt(1, codigo);
                    
                    ps.executeUpdate();
        } catch (SQLException e) {     
            System.out.println("Não foi possivel deletar os dados");
            e.printStackTrace();
        }
    }
    
    public List<Funcionario> listFuncionario(){
        List<Funcionario> dadosFunc = new ArrayList<>();
         try {
            Statement stm = cnn.createStatement();
             ResultSet rs = stm.executeQuery("SELECT * FROM funcionario");
             
             while (rs.next()) {                 
                 Funcionario func = new Funcionario();
                 func.setCodigo(rs.getInt("id"));
                 func.setNomeFunc(rs.getString("nome"));
                 func.setCpfFunc(rs.getString("cpf"));
                 func.setEnderecoFunc(rs.getString("endereco"));
                 func.setTipoFunc(rs.getBoolean("tipo"));
                 func.setTelefoneFunc(rs.getString("telefone"));
                 func.setEmailFunc(rs.getString("email"));
                 func.setSexoFunc(rs.getString("sexo"));
                 func.setDataNascFunc(rs.getDate("datanasc"));
                 
                 dadosFunc.add(func);
             }
        } catch (SQLException e) {
            System.out.println("Não foi possivel listar os dados");
            e.printStackTrace();
        }
        return dadosFunc;
    }
    
    public Funcionario listaFuncCod(int cod){
        Funcionario func = new Funcionario();
        try {
           PreparedStatement ps = cnn.prepareStatement("SELECT * FROM funcionario"
                                                        + " WHERE id = ?");
           ps.setInt(1, cod);
           ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                func.setCodigo(rs.getInt("id"));
                func.setNomeFunc(rs.getString("nome"));
                func.setCpfFunc(rs.getString("cpf"));
                func.setEnderecoFunc(rs.getString("endereco"));
                func.setTipoFunc(rs.getBoolean("tipo"));
                func.setTelefoneFunc(rs.getString("telefone"));
                func.setEmailFunc(rs.getString("email"));
                func.setSexoFunc(rs.getString("sexo"));
                func.setDataNascFunc(rs.getDate("datanasc"));
            }
        } catch (Exception e) {
        }
        return func;
    }
}
