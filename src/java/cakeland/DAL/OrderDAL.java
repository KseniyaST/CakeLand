package cakeland.DAL;

import cakeland.model.Order;
import java.util.List;
import cakeland.model.User;
import org.apache.ibatis.session.SqlSession;

public class OrderDAL extends BaseDAL {

    public OrderDAL() {
        super();
    }

    public List<Order> selectAll() {
        SqlSession session = sqlSessionFactory.openSession();
        List<Order> users = session.selectList("order.selectAll");
        session.close();
        return users;
    }

    public int insert(Order order) {
        SqlSession session = sqlSessionFactory.openSession();
        int count = session.insert("order.insert", order);
        session.commit();
        session.close();
        return count;
    }

    public int delete(Order order) {
        SqlSession session = sqlSessionFactory.openSession();
        int count = session.delete("order.deleteById", order.getId());
        session.commit();
        session.close();
        return count;
    }

    public Order deleteById(int id) {
        SqlSession session = sqlSessionFactory.openSession();
        Order order = session.selectOne("order.deleteById", id);
        session.commit();
        session.close();
        return order;
    }
}
