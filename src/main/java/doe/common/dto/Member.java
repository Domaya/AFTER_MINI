package doe.common.dto;

import lombok.Data;

@Data
public class Member {
	private String userid;
	private String pwd;
	private String name;
	private String email;
	private String regDate;
}
