package br.com.projeto.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

    private static final String HOST = "jdbc:mysql://localhost/projeto_final";
    private static String USER = "root";
    private static String PASSWORD = "";
    private static final String CLASS = "com.mysql.jdbc.Driver";
    private static Connection conexao;

    public static Connection obterConexao() {
        try {
            Class.forName(CLASS);

            /*String dbName = System.getProperty("RDS_DB_NAME");
            USER = System.getProperty("RDS_USERNAME");
            PASSWORD = System.getProperty("RDS_PASSWORD");
            String hostname = System.getProperty("RDS_HOSTNAME");
            String port = System.getProperty("RDS_PORT");*/
            conexao = DriverManager.getConnection(HOST, USER, PASSWORD);
            return conexao;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void fecharConexao() {
        try {
            conexao.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* public static void main(String[] args) {
         Conexao.obterConexao();
    }
     */
}
