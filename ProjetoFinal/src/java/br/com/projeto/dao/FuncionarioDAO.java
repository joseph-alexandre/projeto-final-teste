package br.com.projeto.dao;

import br.com.projeto.bean.FuncionarioBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Patrick
 */
public class FuncionarioDAO {

    public List<FuncionarioBean> obterTodos() {
        List<FuncionarioBean> funcionarios = new ArrayList<>();
        String sql = "SELECT * FROM funcionarios";
        try {
            Statement st = Conexao.obterConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                FuncionarioBean funcionario = new FuncionarioBean();
                funcionario.setId(resultSet.getInt("id"));
                funcionario.setNome(resultSet.getString("nome"));
                funcionario.setCpf(resultSet.getString("cpf"));
                funcionario.setEmail(resultSet.getString("email"));
                funcionario.setTelefone(resultSet.getString("telefone"));
                funcionario.setFuncao(resultSet.getString("funcao"));
                funcionario.setCep(resultSet.getString("cep"));
                funcionario.setEstado(resultSet.getString("estado"));
                funcionario.setRua(resultSet.getString("rua"));
                funcionario.setNumero(resultSet.getString("numero"));
                funcionario.setBairro(resultSet.getString("bairro"));
                funcionario.setCidade(resultSet.getString("cidade"));
                funcionarios.add(funcionario);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return funcionarios;

    }

    public int adicionar(FuncionarioBean funcionario) {
        String sql = "INSERT INTO funcionarios (login, senha, nome, cpf, email, telefone, funcao, cep, estado, rua, numero, bairro, cidade) VALUES (?, ?, ?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = (PreparedStatement) Conexao.obterConexao().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            int quantidade = 1;
            ps.setString(quantidade++, funcionario.getLogin());
            ps.setString(quantidade++, funcionario.getSenha());
            ps.setString(quantidade++, funcionario.getNome());
            ps.setString(quantidade++, funcionario.getCpf());
            ps.setString(quantidade++, funcionario.getEmail());
            ps.setString(quantidade++, funcionario.getTelefone());
            ps.setString(quantidade++, funcionario.getFuncao());
            ps.setString(quantidade++, funcionario.getCep());
            ps.setString(quantidade++, funcionario.getEstado());
            ps.setString(quantidade++, funcionario.getRua());
            ps.setString(quantidade++, funcionario.getNumero());
            ps.setString(quantidade++, funcionario.getBairro());
            ps.setString(quantidade++, funcionario.getCidade());
            ps.execute();
            ResultSet resultSet = ps.getGeneratedKeys();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return -1;
    }

    public boolean excluir(int id) {
        String sql = "DELETE FROM funcionarios WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return false;
    }

    public boolean editar(FuncionarioBean funcionario) {
        String sql = "UPDATE funcionarios SET nome = ?, cpf = ?, email = ?, telefone = ?, funcao = ?, cep = ?, estado = ?, rua = ?, numero = ?, bairro = ?, cidade = ? WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            int atual = 1;
            ps.setString(atual++, funcionario.getNome());
            ps.setString(atual++, funcionario.getCpf());
            ps.setString(atual++, funcionario.getEmail());
            ps.setString(atual++, funcionario.getTelefone());
            ps.setString(atual++, funcionario.getFuncao());
            ps.setString(atual++, funcionario.getCep());
            ps.setString(atual++, funcionario.getEstado());
            ps.setString(atual++, funcionario.getRua());
            ps.setString(atual++, funcionario.getNumero());
            ps.setString(atual++, funcionario.getBairro());
            ps.setString(atual++, funcionario.getCidade());
            ps.setInt(atual++, funcionario.getId());
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return false;
    }

    public FuncionarioBean obterPeloId(int id) {
        String sql = "SELECT id, nome, cpf, email, telefone, funcao, cep, estado, rua, numero, bairro, cidade FROM funcionarios WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if (resultSet.next()) {
                FuncionarioBean funcionario = new FuncionarioBean();
                funcionario.setId(id);
                funcionario.setNome(resultSet.getString("nome"));
                funcionario.setCpf(resultSet.getString("cpf"));
                funcionario.setEmail(resultSet.getString("email"));
                funcionario.setTelefone(resultSet.getString("telefone"));
                funcionario.setFuncao(resultSet.getString("funcao"));
                funcionario.setCep(resultSet.getString("cep"));
                funcionario.setEstado(resultSet.getString("estado"));
                funcionario.setRua(resultSet.getString("rua"));
                funcionario.setNumero(resultSet.getString("numero"));
                funcionario.setBairro(resultSet.getString("bairro"));
                funcionario.setCidade(resultSet.getString("cidade"));
                return funcionario;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return null;
    }

    public FuncionarioBean validarLogin(String login, String senha) {
        String sql = "SELECT id FROM funcionarios WHERE login = ? AND senha = ?";
        try {
            PreparedStatement st = Conexao.obterConexao().prepareStatement(sql);
            st.setString(1, login);
            st.setString(2, senha);
            st.execute();
            ResultSet resultSet = st.getResultSet();
            if (resultSet.next()) {
                int id = resultSet.getInt("id");
                return obterPeloId(id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return null;
    }

    public List<HashMap<String, Object>> obterTodosParaDataTable() {
        List<HashMap<String, Object>> funcionarios = new ArrayList<>();
        String sql = "SELECT * FROM funcionarios";
        try {
            Statement statement = Conexao.obterConexao().createStatement();
            statement.execute(sql);
            ResultSet resultSet = statement.getResultSet();
            while (resultSet.next()) {
                HashMap<String, Object> funcionario = new HashMap<>();
                funcionario.put("nome", resultSet.getString("nome"));
                funcionario.put("id", resultSet.getInt("id"));
                funcionario.put("funcao", resultSet.getString("funcao"));
                funcionario.put("telefone", resultSet.getString("telefone"));
                funcionarios.add(funcionario);
            }

        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            Conexao.fecharConexao();
        }
        return funcionarios;

    }

}
