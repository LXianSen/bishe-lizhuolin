package DAO;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;

import com.google.gson.Gson;
import com.sun.org.apache.bcel.internal.generic.NEW;

import MODEL.booktype;

public class BkTypeDao extends BaseDAO<booktype> {

	//��ȡ��Ŀ¼��Ϣ     
	public List<String> getfathers() throws SQLException, Exception{
		Connection connection=Druid().getConnection();
		List<String> fatherStrings=new ArrayList<String>();
		String sqlString="select DISTINCT typefather from booktype";
		PreparedStatement ps=connection.prepareStatement(sqlString);
		ResultSet rs=ps.executeQuery();
		while (rs.next()) {
			fatherStrings.add(rs.getString("typefather"));
		}
		return fatherStrings;
	}
	
	
	public List<Map<String, Object>> getFathertypelist() throws SQLException, Exception{
		Connection connection=Druid().getConnection();
		String sql="select DISTINCT typefather from booktype";
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		/*
		 List<Map<String, List<Map<String, String>>>>
		 List<Map<String, Object>>   obj:List<Map<String, String>>>    
		 List<obj>      obj:map<string,string>   
		*/
		List<Map<String, Object>> fatherList=new ArrayList<Map<String,Object>>();
		
		while (rs.next()) {
			Map<String, Object> tempMap=new HashMap<String,Object>();
                // �������� ����ȡ ��ǰ�е�����
                String value = rs.getString("typefather");
                // �������� ͨ�������������Զ���
                    tempMap.put("firstname",value);
                    tempMap.put("secondname", " ");   
                    fatherList.add(tempMap);
			}

		return fatherList;
		}

	//��ѯ��Ŀ¼���ŵ���Ŀ¼����   ����������Ŀ¼
	public List<Map<String, Object>> getSontypesbyFather() throws SQLException, Exception {
		Connection connection=Druid().getConnection();
		PreparedStatement ps;
		List<List<Map<String, String>>> sonList=new ArrayList<List<Map<String, String>>>();
		//�Ȼ�ȡ��Ŀ¼�б�
		List<String> fathers=getfathers();
		for (int i = 0; i < fathers.size(); i++) {
			String sql="select typeson,typeimg from booktype where typefather="+fathers.get(i);
			ps=connection.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			//�洢һ��һ��Ŀ¼���е���Ŀ¼
			List<Map<String, String>> tempmaplist=new ArrayList<Map<String,String>>();
			while (rs.next()) {
				//�ڲ�洢ÿһ��һ��Ŀ¼��ÿһ������Ŀ¼
				Map<String, String> tempMap=new HashMap<String, String>();
                // �������� ����ȡ ��ǰ�е�����
                String value = rs.getString("typeson");
                //��һ����¼�Ž�map       map<son>
                tempMap.put("name",value);
                tempMap.put("imgurl", null);
    			tempmaplist.add(tempMap);
			}
		sonList.add(tempmaplist);
		}
		//������list������ÿ��map����һ��һ��Ŀ¼
		List<Map<String, Object>> fatherList=getFathertypelist();
		for (int j = 0; j < fatherList.size(); j++) {
			//���map���ѡ�һ��mapΪһ��һ��Ŀ¼
			Map<String, Object> fatherMap=getFathertypelist().get(j);
			fatherMap.put("secondname", sonList.get(j));
			fatherList.add(fatherMap);
		}
		return fatherList;
	}
}
