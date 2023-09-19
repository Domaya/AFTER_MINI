package doe.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/joinus/")
public class FrontController {

	//추후 추가
	//MeberService memberservice;
	
	//@Autowired로 멤버서비스 의존성 주입
	
	@GetMapping("join.htm")
	public String join() {
		System.out.println("ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄹㄴ");
		return "joinus/join";
	}
	
	@GetMapping("multimail.htm")
	public String multiMail() {
		return "joinus/multiMail";
	}
	
	@GetMapping("filemail.htm")
	public String fileMail() {
		return "joinus/fileMail";
	}
}
