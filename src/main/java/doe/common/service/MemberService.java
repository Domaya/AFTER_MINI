package doe.common.service;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import doe.common.dao.MemberDao;

import doe.common.dto.Member;

@Service
public class MemberService {
	// Mybatis 작업
	private SqlSession sqlsession;

	@Autowired
	public void setSqlsession(SqlSession sqlsession) {
		this.sqlsession = sqlsession;
	}

	public String register(Member member) {
		
		MemberDao memberdao = sqlsession.getMapper(MemberDao.class);
		int result = 0;
		String msg = "";
		try {
			result = memberdao.insertMember(member);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result > 0) {
			msg = "success";
		}else {
			msg = "fail";
		}
		
		return msg;
	}
	
	public String checkId(String id) {
		MemberDao memberdao = sqlsession.getMapper(MemberDao.class);
		int cnt = 0;
		try {
			cnt = memberdao.idCheck(id);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt > 0 ? "false" : "true";
	}

}
