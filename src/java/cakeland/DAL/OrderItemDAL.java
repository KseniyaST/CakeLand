package cakeland.DAL;

import cakeland.model.Order;
import cakeland.model.OrderItem;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

public class OrderItemDAL extends BaseDAL {

    public OrderItemDAL() {
        super();
    }

    public List<OrderItem> selectAll() {
        SqlSession session = sqlSessionFactory.openSession();
        List<OrderItem> ois = session.selectList("orderItem.selectAll");
        session.close();
        return ois;
    }

    public int insert(OrderItem orderItem) {
        SqlSession session = sqlSessionFactory.openSession();
        int count = session.insert("orderItem.insert", orderItem);
        session.commit();
        session.close();
        return count;
    }

    public int delete(OrderItem orderItem) {
        SqlSession session = sqlSessionFactory.openSession();
        int count = session.delete("orderItem.delete", orderItem);
        session.commit();
        session.close();
        return count;
    }

    public Order deleteById(int id) {
        SqlSession session = sqlSessionFactory.openSession();
        Order order = session.selectOne("orderItem.deleteById", id);
        session.commit();
        session.close();
        return order;
    }
}
