package DAO;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.CountDownLatch;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.junit.jupiter.api.Test;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import MODEL.cart;
import MODEL.user;
import javafx.css.PseudoClass;



@WebServlet("/dao")
public  class BaseDAO<T> {
	
	public DataSource Druid() throws Exception {
	Properties properties = new Properties();
    //���������ļ�
    InputStream inputStream = BaseDAO.class.getClassLoader().getResourceAsStream("druid.properties");
    properties.load(inputStream);
    DataSource dataSource =DruidDataSourceFactory.createDataSource(properties);
    Connection connection=dataSource.getConnection();
    return dataSource;
}

	public List<T> adds(T t) throws SQLException, Exception {
		   // insert into ***(?,?,?) values(?,?,?)
		Class clasz = t.getClass();
        StringBuffer sb = new StringBuffer("insert into ");
        sb.append(clasz.getSimpleName());
        System.out.println(clasz.getSimpleName());
        sb.append("(");
        
        // ������е�����
        Field[] fs = clasz.getDeclaredFields();
        
        // �����������Ե�ֵ
        List parList = new ArrayList();
        for (Field f : fs)
        {  // �������� ����Ӧ���Ǳ��������
            String columnName = f.getName();
            f.setAccessible(true);
            
            // ���ݹ����ķ��Ͷ���t�����Ե�ֵ
            Object value = f.get(t);
            if (value != null && !"".equals(value))
            {

                sb.append(columnName);
                sb.append(",");
                // ��������ӵ�������
                parList.add(value);
            }

            
            // ƴװget����
            String methodName = "get" + columnName.substring(0, 1).toUpperCase() + columnName.substring(1);
            Method getMethod = clasz.getMethod(methodName);
            
            // ͨ��get������ȡ �����Ե�ֵ
            parList.add(getMethod.invoke(t));
        }
        
        sb = new StringBuffer(sb.toString().substring(0, sb.toString().length() - 1));
        sb.append(") values (");
        
        for (Object o : parList)
        {
            sb.append("?,");
        }
        
        sb = new StringBuffer(sb.toString().substring(0, sb.toString().length() - 1));
        sb.append(")");
        
        System.out.println(sb.toString());
        
        PreparedStatement ps = Druid().getConnection().prepareStatement(sb.toString());
        
        for (int i = 0; i < parList.size(); i++)
        {
            ps.setObject(i + 1, parList.get(i));
        }
        
        int count = ps.executeUpdate();
		return parList;
    }

	public List<T> deletes(T t) throws SQLException, Exception{
		//delete * from *** where ?=? and ?=?
		Class clasz=t.getClass();
		List<T> objList=new ArrayList<T>();
		StringBuffer sb=new StringBuffer("delete * from ");
		sb.append(clasz.getSimpleName());
		sb.append("where 1=1 ");
		// ������Զ�������
		Field []fs=clasz.getDeclaredFields();
		Connection con=Druid().getConnection();
		List<Object> parList = new ArrayList();
		for(Field f:fs)
		{
			String name=f.getName();
			f.setAccessible(true);
			Object value=f.get(t);
			if(value!=null&&!"".equals(value)) {
				sb.append("and ");
				sb.append(name).append("=? ");
				parList.add(value);
			}
		}
		PreparedStatement ps=con.prepareStatement(sb.toString());
		 for (int i = 0; i < parList.size(); i++)
	        {
	            ps.setObject(i + 1, parList.get(i));
	        }
	        
	        ResultSet rs = ps.executeQuery();
	        
	        // Ԫ���ݶ���(��������˱�ͷ)
	        ResultSetMetaData rsmd = rs.getMetaData();
	        
	        // �˱�һ���ж�����
	        int columnCount = rsmd.getColumnCount();
	        // System.out.println();
	        // rsmd.getColumnName(column)
	        
	        while (rs.next())
	        {
	            T obj = (T)clasz.newInstance();
	            
	            for (int i = 1; i <= columnCount; i++)
	            {
	                // �����к� ����� ����
	                String columnName = rsmd.getColumnName(i);
	                // �������� ����ȡ ��ǰ�е�����
	                Object value = rs.getObject(columnName);
	                // �������� ͨ�������������Զ���
	                Field f = clasz.getDeclaredField(columnName);
	                if (f != null)
	                {
	                    f.setAccessible(true);
	                    f.set(obj, value);
	                }
	                System.out.println(columnName+": "+value);
	            }
	            
	            objList.add(obj);
	        }
	        return objList;
	}
	

	public List<T> updates(T t1,T t2)throws Exception{
		//update dbname set ?=?,?=? where ?=? and ?=?
		Class clasz1=t1.getClass();
		Class clasz2=t2.getClass();

		StringBuffer sb=new StringBuffer("update ");
		sb.append(clasz1.getSimpleName());
		sb.append(" set ");
		 // ������е�����
        Field[] fs1 = clasz1.getDeclaredFields();
        Field[] fs2 = clasz2.getDeclaredFields();
        // �����������Ե�ֵ
        List parList = new ArrayList();
        //ȡ   update dbname set ?=?,?=? 
        for (Field f : fs1)
        {
            String name = f.getName();
            sb.append(name);
            sb.append("=?,");
            
            // ƴװget����
            String methodName = "get" + name.substring(0, 1).toUpperCase() + name.substring(1);
            Method getMethod = clasz1.getMethod(methodName);
            
            // ͨ��get������ȡ �����Ե�ֵ
            parList.add(getMethod.invoke(t1));
        }
        //ȡ     where ?=? and ?=?
        sb.append(" where ");
        for (Field f : fs2)
        {
            String name = f.getName();
            sb.append(name);
            sb.append("=?,");
            
            // ƴװget����
            String methodName = "get" + name.substring(0, 1).toUpperCase() + name.substring(1);
            Method getMethod = clasz2.getMethod(methodName);
            
            // ͨ��get������ȡ �����Ե�ֵ
            parList.add(getMethod.invoke(t2));
        }
        sb = new StringBuffer(sb.toString().substring(0, sb.toString().length() - 1));
        
        for (Object o : parList)
        {
            sb.append("?,");
        }
        
        sb = new StringBuffer(sb.toString().substring(0, sb.toString().length() - 1));
        
        System.out.println(sb.toString());
        
        PreparedStatement ps = Druid().getConnection().prepareStatement(sb.toString());
        
        for (int i = 0; i < parList.size(); i++)
        {
            ps.setObject(i + 1, parList.get(i));
        }
        
        int count = ps.executeUpdate();
		return parList;
		
	}
	public List<T> selects(T t) throws Exception {
		 if (t == null)
	        {
	            throw new Exception("�Բ���ûǮ���ܰ���");
	        }
	        
	        // ������Ӷ���Connection
	        // ƴ��sql���
	        // �������Ӷ��󴴽�PreparedStatment
	        // ��ռλ������ֵ
	        // ִ��sql
	        // ����ResultSet
	        
	        Class clasz = t.getClass();
	        List<T> objList = new ArrayList<T>();
	        
	        // ������Զ�������
	        Field[] fs = clasz.getDeclaredFields();
	        
	        Connection con = Druid().getConnection();
	        // select * from zoneArea where id = ? and zone =?
	        
	        // �������������ļ���
	        List<Object> parList = new ArrayList();
	        
	        StringBuffer sb = new StringBuffer("select * from ");
	        sb.append(clasz.getSimpleName());
	        sb.append(" where 1 = 1");
	        for (Field f : fs)
	        {
	            // �������� ����Ӧ���Ǳ��������
	            String name = f.getName();
	            f.setAccessible(true);
	            
	            // ���ݹ����ķ��Ͷ���t�����Ե�ֵ
	            Object value = f.get(t);
	            
	            if (value != null && !"".equals(value))
	            {
	                sb.append(" and ");
	                sb.append(name).append("=? ");
	                // ��������ӵ�������
	                parList.add(value);
	            }
	        }
	        
	        // id=? and area=?
	        System.out.println(sb.toString());
	        // ����Ԥ����������
	        PreparedStatement ps = con.prepareStatement(sb.toString());
	        for (int i = 0; i < parList.size(); i++)
	        {
	            ps.setObject(i + 1, parList.get(i));
	        }
	        
	        ResultSet rs = ps.executeQuery();
	        
	        // Ԫ���ݶ���(��������˱�ͷ)
	        ResultSetMetaData rsmd = rs.getMetaData();
	        
	        // �˱�һ���ж�����
	        int columnCount = rsmd.getColumnCount();
	        // System.out.println();
	        // rsmd.getColumnName(column)
	        
	        while (rs.next())
	        {
	            T obj = (T)clasz.newInstance();
	            
	            for (int i = 1; i <= columnCount; i++)
	            {
	                // �����к� ����� ����
	                String columnName = rsmd.getColumnName(i);
	                // �������� ����ȡ ��ǰ�е�����
	                Object value = rs.getObject(columnName);
	                // �������� ͨ�������������Զ���
	                Field f = clasz.getDeclaredField(columnName);
	                if (f != null)
	                {
	                    f.setAccessible(true);
	                    f.set(obj, value);
	                }
	                System.out.println(columnName+": "+value);
	            }
	            
	            objList.add(obj);
	        }
	        return objList;
		}


	public int add(int custId, cart cart) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public static void main() throws SQLException, Exception
	{
		
	}
}

