package DAO;

import java.util.List;

import MODEL.user;
//�̳л���BaseDao��ʵ��������
public class UserDao extends BaseDAO<user> {
	
	public boolean checkTEL(user u) throws Exception {
		u.setPwd(null);
		UserDao dao1=new UserDao();
    	List<user> list=dao1.selects(u);
		if(list.isEmpty()) {
			dao1.adds(u);
			return true;
		}else {
			return false;
		}	}
	
	
}
