package br.com.projeto.dao;

import br.com.projeto.bean.CategoriaBean;
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
public class ProdutoDAO {

    public List<ProdutoBean> obterTodos() {
        List<ProdutoBean> produtos = new ArrayList<>();
        String sql = "SELECT * FROM produtos p JOIN categorias ct ON (ct.id = p.id_categoria)";
        try {
            Statement st = Conexao.obterConexao().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while (resultSet.next()) {
                ProdutoBean produto = new ProdutoBean();
                produto.setId(resultSet.getInt("p.id"));
                produto.setNome(resultSet.getString("p.nome"));
                produto.setPreco(resultSet.getFloat("p.preco"));
                produto.setQuantidade(resultSet.getInt("p.quantidade"));
                produto.setIdCategoria(resultSet.getInt("p.id_categoria"));

                CategoriaBean categoria = new CategoriaBean();
                categoria.setId(produto.getIdCategoria());
                categoria.setNome(resultSet.getString("ct.nome"));

                produto.setCategoria(categoria);

                produtos.add(produto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return produtos;
    }

    public int adicionar(ProdutoBean produto) {
        String sql = "INSERT INTO produtos (nome, preco, quantidade id_categoria) VALUES (?,?,?,?)";

        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, produto.getNome());
            ps.setFloat(2, produto.getPreco());
            ps.setInt(3, produto.getIdCategoria());
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
        String sql = "DELETE FROM produtos WHERE id =?";
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

    public boolean editar(ProdutoBean produto) {
        String sql = "UPDATE produtos SET nome = ?, preco = ?, categoria = ?, id_categoria = ? WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setString(1, produto.getNome());
            ps.setFloat(2, produto.getPreco());
            ps.setInt(3, produto.getQuantidade());
            ps.setInt(4, produto.getIdCategoria());
            ps.setInt(5, produto.getId());
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return false;
    }

    public ProdutoBean obterPeloId(int id) {
        String sql = "SELECT * FROM produtos WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.obterConexao().prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if (resultSet.next()) {
                ProdutoBean produto = new ProdutoBean();
                produto.setId(id);
                produto.setNome(resultSet.getString("nome"));
                produto.setPreco(resultSet.getFloat("preco"));
                produto.setQuantidade(resultSet.getInt("quantidade"));
                produto.setIdCategoria(resultSet.getInt("id_categoria"));
                return produto;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.fecharConexao();
        }
        return null;
    }

    public List<HashMap<String, Object>> obterTodosParaDataTable() {
        List<HashMap<String, Object>> produtos = new ArrayList<>();
        String sql = "SELECT * FROM produtos p JOIN categorias ct ON (ct.id = p.id_categoria)";

        try {
            Statement statement = Conexao.obterConexao().createStatement();
            statement.execute(sql);
            ResultSet resultSet = statement.getResultSet();
            while (resultSet.next()) {
                HashMap<String, Object> produto = new HashMap<>();
                produto.put("id", resultSet.getInt("id"));
                produto.put("id_categoria", resultSet.getString("ct.nome"));
                produto.put("nome", resultSet.getString("nome"));
                produto.put("preco", resultSet.getFloat("preco"));
                produtos.add(produto);
            }
        } catch (SQLException e) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally{
            Conexao.fecharConexao();
        
            }
        
        return produtos;
    }

}
