package doe.common.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import doe.common.service.MemberService;


@RestController
public class AjaxController {

	@Autowired
	private MemberService memberservice;
	// idCheck
	@PostMapping("/joinus/idCheck/{userid}")
	public ResponseEntity<String> idCheck(@PathVariable("userid") String userid) {
		String data = null;
		data = memberservice.checkId(userid);
		return new ResponseEntity<String>(data, HttpStatus.OK);
	}
}
