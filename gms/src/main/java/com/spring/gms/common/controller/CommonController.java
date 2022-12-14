package com.spring.gms.common.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.gms.common.dto.ContactDto;
import com.spring.gms.common.service.CommonService;

@Controller
public class CommonController {
	
	@Autowired
	private CommonService commonService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		
		return "/main";
	}
	
	@RequestMapping(value = "/classes", method = RequestMethod.GET)
	public String classes() {
		
		return "/classes";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		
		return "/member/register";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		
		return "/member/login";
	}
	
	
	@RequestMapping(value = "/contact", method=RequestMethod.GET)
	public ModelAndView contact() throws Exception{
		return new ModelAndView("/contact");
	}
	
	@RequestMapping(value = "/contact", method=RequestMethod.POST)
	public ResponseEntity<Object> contact(ContactDto contactDto, HttpServletRequest request) throws Exception{
		
		commonService.addNewContact(contactDto);
		String jsScript  = "<script>";
			   jsScript += " alert('컨텍트 정보가 등록 되었습니다.');";
			   jsScript += " location.href='" + request.getContextPath() + "/';";
			   jsScript += "</script>";
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
				
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/contactList", method=RequestMethod.GET)
	public ModelAndView contactList() throws Exception {
		
		ModelAndView mv = new ModelAndView("/common/contactList");
		mv.setViewName("/contactList");
		mv.addObject("contactList", commonService.getContactList());
		
		return mv;
	}
	
	@RequestMapping(value = "/contactDetail", method=RequestMethod.GET)
	public ModelAndView contactDetail(@RequestParam("contactCd") int contactCd) throws Exception {

		ModelAndView mv = new ModelAndView("/common/contactList");
		mv.setViewName("/contactDetail");
		mv.addObject("contactDto", commonService.getContactDetail(contactCd));
		
		return mv;
	}
	
	@RequestMapping(value = "/removeContact", method=RequestMethod.GET)
	public ResponseEntity<Object> removeContact(@RequestParam("contactCdList") String contactCdList) throws Exception {
		String[] temp = contactCdList.split(",");
		int[] deleteContactCdList = new int[temp.length];
		
		for(int i = 0; i < temp.length; i++) {
			deleteContactCdList[i] = Integer.parseInt(temp[i]);
		}
		
		commonService.removeContact(deleteContactCdList);
		
		String jsScript  = "<script>";
			   jsScript += " alert('컨텍트 정보를 삭제했습니다.');";
			   jsScript += " location.href='contactList'";
			   jsScript += "</script>";
	
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
						
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "/bodybuilding", method=RequestMethod.GET)
	public String bodybuilding() {
		
		return "/bodybuilding";
	}

	@RequestMapping(value = "/aerobic", method=RequestMethod.GET)
	public String aerobic() {
		
		return "/aerobic";
	}
	
	@RequestMapping(value = "/personalTraining", method=RequestMethod.GET)
	public String personalTraining() {
		
		return "/personalTraining";
	}
	
	@RequestMapping(value = "/pilates", method=RequestMethod.GET)
	public String pilates() {
		
		return "/pilates";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
