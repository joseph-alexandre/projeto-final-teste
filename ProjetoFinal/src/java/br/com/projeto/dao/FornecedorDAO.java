package br.com.projeto.dao;

import br.com.projeto.bean.FornecedorBean;
import br.com.projeto.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Gabriel Budke
 */
public class FornecedorDAO {

    public List<FornecedorBean> obterTodos() {
        List<FornecedorBean> fornecedores = new ArrayList<>();
        String sql = "SELECT * FROM fornecedores";

        try {
            Statement st = Conexao.obterConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                FornecedorBean fornecedor = new FornecedorBean();
                fornecedor.setId(resultSet.getInt("id"));
                fornecedor.setNome(resultSet.getString("nome"));
                fornecedor.setCnpj(resultSet.getString("cnpj"));
                fornecedor.setEmail(resultSet.getString("email"));
                fornecedor.setTelefone(resultSet.getString("telefone"));
                fornecedores.add(fornecedor);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return fornecedores;
    }

    public int adicionar(FornecedorBean fornecedor) {
        String sql = "INSERT INTO fornecedores(nome, cnpj, telefone, email) VALUES (?,?,?,?)";

        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql,
                    PreparedStatement.RETURN_GENERATED_KEYS);

            ps.setString(1, fornecedor.getNome());
            ps.setString(2, fornecedor.getCnpj());
            ps.setString(3, fornecedor.getTelefone());
            ps.setString(4, fornecedor.getEmail());
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

        String sql = "DELETE FROM fornecedores WHERE id = ?";
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

    public FornecedorBean obterPeloId(int id) {

        String sql = "SELECT * FROM fornecedores WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if (resultSet.next()) {
                FornecedorBean fornecedor = new FornecedorBean();
                fornecedor.setId(id);
                fornecedor.setNome(resultSet.getString("nome"));
                fornecedor.setCnpj(resultSet.getString("cnpj"));
                fornecedor.setEmail(resultSet.getString("email"));
                fornecedor.setTelefone(resultSet.getString("telefone"));
                return fornecedor;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }

        return null;
    }

    public boolean editar(FornecedorBean fornecedor) {
        String sql = "UPDATE fornecedores SET nome = ?, cnpj = ?, telefone = ?, email = ? WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            int posicao = 1;
            ps.setString(posicao++, fornecedor.getNome());
            ps.setString(posicao++, fornecedor.getCnpj());
            ps.setString(posicao++, fornecedor.getTelefone());
            ps.setString(posicao++, fornecedor.getEmail());
            ps.setInt(posicao++, fornecedor.getId());
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }

        return false;

    }

}
