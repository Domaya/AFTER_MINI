package doe.common.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
@PropertySource("/WEB-INF/config/mail.properties")
public class MailService {

	@Autowired
	private JavaMailSender mailSender;
	
	@Value("${mail.username}")
	String username;
	
	private HashMap<String, String> authList = new HashMap<>();
	
	public void sendAuthMail(String email) {
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111; // 6자리 난수 생성
		Integer.toString(checkNum);
		//스프링 빈 생명주기
		authList.put(email, Integer.toString(checkNum));
		////
		
		// 메일 본문 템플릿
		String content = "홈페이지를 방문해주셔서 감사합니다." + "<br><br>" + "인증 번호는 <" + checkNum + "> 입니다." + "<br>"
				+ "홈페이지로 돌아가서 해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		// MimeMessage 대신 SimpleMailMessage를 사용할 수도 있습니다.
		// 둘의 차이점은 MimeMessage의 경우 멀티파트 데이터를 처리 할 수 있고 SimpleMailMessage는 단순한 텍스트 데이터만
		// 전송이 가능합니다.

		MimeMessage message = mailSender.createMimeMessage(); // MimeMessage 객체를 이용해서 메시지를 구성한 뒤 메일 발송

		try {
			// MimeMessag를 이용해서 파일첨부가 가능하지만 복잡하고 힘들기에 MimeMessageHelper 도움받아 파일 첨부
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");// true는 멀티파트 메세지를 사용하겠다는 의미

			helper.setFrom(username); // 보내는 사람 이메일
			// bean에 아이디 설정한 것은 단순히 smtp 인증을 받기 위해 사용. 따라서 보내는이(setFrom())반드시 필요
			// 보내는이와 메일주소를 수신하는이가 볼때 모두 표기 되게 원하신다면 아래의 코드를 사용하시면 됩니다.
			// mailHelper.setFrom("보내는이 이름 <보내는이 아이디@도메인주소>");

			helper.setTo(email); // 수신자 이메일
			helper.setSubject("TTAC :: 회원가입 인증메일"); // 제목
			helper.setText(content, true); // 내용. true는 html을 사용하겠다는 의미

			// 아래는 helper안쓰고 그냥 했을 때 ...
			// message.setSubject("스프링으로 메일보내기");
			// message.setText("메일본문 : " + checkNum);
			// message.setRecipients(MimeMessage.RecipientType.TO,
			// InternetAddress.parse(email));
			// message.setRecipients(MimeMessage.RecipientType.TO, email);
			// message.setFrom("hjdo0211@naver.com");

			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}

	}
	
	public String checkAuthMail(String email, String userAuthNum) {
		try {

			String originalNum = authList.get(email);
			return originalNum.equals(userAuthNum) ? "correct" : "incorrect";
				
		} catch (Exception e) {
			e.printStackTrace();
			return "exception";
		}
		
	}
}
