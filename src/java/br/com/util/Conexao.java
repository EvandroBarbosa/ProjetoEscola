package br.com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Evandro
 */
public class Conexao {
    
    private static Connection conexao;
    
    public static Connection getConexao() throws SQLException{
        if (conexao != null) {
            return conexao;
        }else{
            try {
                Class.forName("org.postgresql.Driver");
                conexao = DriverManager.getConnection("jdbc:postgresql://localhost:5432/escola","postgres","123456");
            } catch (ClassNotFoundException e) {
                System.out.println("Aplicação não contém o driver para o banco");
                return null;
            }catch(SQLException err){
                System.out.println("Erro na conexão com o banco, verifique a url, o usuário e a senha");
                return null;
            }
        }
        return conexao;
    }
    
}
