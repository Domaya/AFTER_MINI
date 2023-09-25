package doe.common.controller;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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
		
		String checkNum = mailService.sendAuthMail(email.toString());
		return checkNum;
	}
}
