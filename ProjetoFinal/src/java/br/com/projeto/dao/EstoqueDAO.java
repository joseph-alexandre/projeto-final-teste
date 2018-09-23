package br.com.projeto.dao;

import br.com.projeto.bean.EstoqueBean;
import br.com.projeto.bean.ProdutoBean;
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
 * @author Logan Michel
 */
public class EstoqueDAO {

    public List<HashMap<String, Object>> obterTodosParaDataTable() {
        List<HashMap<String, Object>> estoques = new ArrayList<>();
        String sql = "SELECT * FROM estoque e JOIN produtos p ON (p.id = e.id_produto)";

        try {
            Statement st = Conexao.obterConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                HashMap<String, Object> estoque = new HashMap<>();
                estoque.put("id", resultSet.getInt("e.id"));
                estoque.put("id_produto", resultSet.getInt("p.nome"));
                estoque.put("quantidade", resultSet.getInt("e.quantidade"));
                estoque.put("tipo", resultSet.getInt("e.tipo"));
                estoques.add(estoque);
            }
        } catch (SQLException e) {
            Logger.getLogger(EstoqueDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            Conexao.fecharConexao();
        }
        
        return estoques;
    }

    public List<EstoqueBean> obterTodos() {
        List<EstoqueBean> estoques = new ArrayList<>();
        String sql = "SELECT p.preco, e.id_produto, e.id, e.tipo AS 'tipo', p.nome AS 'produtos', SUM(e.quantidade) AS 'quantidade' FROM estoque e JOIN produtos p ON (p.id = e.id_produto) GROUP BY e.id_produto;";
        try {
            Statement st = Conexao.obterConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                EstoqueBean estoque = new EstoqueBean();
                estoque.setId(resultSet.getInt("e.id"));
                estoque.setIdProduto(resultSet.getInt("e.id_produto"));
                estoque.setQuantidade(resultSet.getInt("quantidade"));
                estoque.setTipo(resultSet.getString("tipo"));

                ProdutoBean produto = new ProdutoBean();
                produto.setId(estoque.getIdProduto());
                produto.setNome(resultSet.getString("produtos"));
                produto.setPreco(resultSet.getFloat("p.preco"));

                estoque.setProduto(produto);

                estoques.add(estoque);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return estoques;

    }

    public int adicionar(EstoqueBean estoque) {
        String sql = "INSERT INTO estoque (id_produto, tipo, quantidade) VALUES(?,?,?)";

        try {

            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setInt(1, estoque.getIdProduto());
            ps.setString(2, estoque.getTipo());
            ps.setInt(3, estoque.getQuantidade());
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
        String sql = "DELETE FROM estoque WHERE id = ?";
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

    public boolean editar(EstoqueBean estoque) {
        String sql = "UPDATE estoque SET id_produto = ?, tipo = ?, quantidade = ? WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, estoque.getIdProduto());
            ps.setString(2, estoque.getTipo());
            ps.setInt(3, estoque.getQuantidade());
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return false;
    }

    public EstoqueBean obterPeloId(int id) {
        String sql = "SELECT * FROM estoque WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if (resultSet.next()) {
                EstoqueBean estoque = new EstoqueBean();
                estoque.setId(id);
                estoque.setIdProduto(resultSet.getInt("id_produto"));
                estoque.setTipo(resultSet.getString("tipo"));
                estoque.setQuantidade(resultSet.getInt("quantidade"));
                return estoque;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return null;
    }

}
