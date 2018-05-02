
package cakeland.DAL;

import java.util.List;
import cakeland.model.Cake;
import org.apache.ibatis.session.SqlSession;

public class CakeDAL extends BaseDAL {

    public CakeDAL() {
        super();
    }
    public List<Cake> selectAll()
    {
        SqlSession session = sqlSessionFactory.openSession(); 
        List<Cake> cakes =  session.selectList("cake.selectAll"); 
        session.close(); 
        return cakes;
    }
    
    public Cake selectById(int id)
    {
        SqlSession session = sqlSessionFactory.openSession(); 
        Cake abonent =  session.selectOne("cake.selectById",id); 
        session.close(); 
        return abonent;
    }
    
    public int insert(Cake abonent)
    {
        SqlSession session = sqlSessionFactory.openSession(); 
        int count = session.insert("cake.insert",abonent);
        session.commit();
        session.close(); 
        return  count;
    }
     public int update(Cake abonent)
    {
        SqlSession session = sqlSessionFactory.openSession(); 
        int count = session.update("cake.update",abonent);
        session.commit();
        session.close(); 
        return  count;
    }
    public int delete(Cake abonent)
    {
        SqlSession session = sqlSessionFactory.openSession(); 
        int count = session.delete("cake.delete",abonent);
        session.commit();
        session.close(); 
        return  count;
    }
     public Cake deleteById(int id)
    {
        SqlSession session = sqlSessionFactory.openSession(); 
        Cake abonent =  session.selectOne("cake.deleteById",id);
        session.commit();
        session.close(); 
        return abonent;
    }
     public List<Cake> selectByFullname(String name)
    {
        SqlSession session = sqlSessionFactory.openSession(); 
        List<Cake> abonent =  session.selectList("cake.selectByFullname","%"+name+"%"); 
        session.close(); 
        return abonent;
        
    }
}