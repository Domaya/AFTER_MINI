package doe.common.dao;

import java.sql.SQLException;
import java.util.List;

import doe.common.dto.Member;

public interface MemberDao {
	List<Member> getMember() throws ClassNotFoundException, SQLException;
	
	int insertMember(Member member) throws ClassNotFoundException, SQLException;
	
	int idCheck(String userid) throws ClassNotFoundException, SQLException;
}
