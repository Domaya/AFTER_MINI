package doe.common.controller;

import java.util.HashMap;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import doe.common.dto.Member;

import doe.common.service.MailService;
import doe.common.service.MemberService;


@RestController
public class AjaxController {

	@Autowired
	private MemberService memberservice;
	
	@Autowired
	private MailService mailService;
	
	// idCheck
	@PostMapping("/joinus/idCheck/{userid}")
	public ResponseEntity<String> idCheck(@PathVariable("userid") String userid) {
		String data = null;
		data = memberservice.checkId(userid);
		return new ResponseEntity<String>(data, HttpStatus.OK);
	}
	
	//인증메일 전송
	@RequestMapping(value = "/joinus/emailAuth", method = RequestMethod.POST)
	public String sendAuthMail(@RequestParam(value = "email") String email) {
		System.out.println("컨트롤러로 넘어온 이메일 파라미터 : " + email.toString());
		
		mailService.sendAuthMail(email.toString());
		
		return "success";
	}
	//인증번호 검사
	@RequestMapping(value = "/joinus/authCheck", method = RequestMethod.POST)
	public String checkMail(@RequestBody HashMap<String, Object> data) {
			
		String email = (String) data.get("email");
		String userAuthKey = (String) data.get("userAuthKey");
			
		String result = mailService.checkAuthMail(email, userAuthKey);
		
		return result;
	}
	
	// 회원가입
	@PostMapping("/joinus/join")
	public ResponseEntity<String> register(@RequestBody Member member){//(Member member, String userAuthKey) {
		//회원가입
		//Member member = (Member) data.get("member");	
		HttpStatus status = null;
		String result = memberservice.register(member);
		if(result.equals("success")) {
			status = HttpStatus.OK;
		}else if(result.equals("fail")) {
			status = HttpStatus.INTERNAL_SERVER_ERROR;
		}
		
		return new ResponseEntity<String>(result, status);
		/*
		System.out.println("member1 : " + member);
		try {
			System.out.println("insert 실행");
			memberservice.register(member);

			check = "Y"; // 중복
			System.out.println("가입 성공");

			System.out.println("결과" + check);
			return new ResponseEntity<String>(check, HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<String>(check, HttpStatus.BAD_REQUEST);
		}*/
	}

}
