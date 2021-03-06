package com.free.store;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.free.store.model.GuesthouseDto;
import com.free.store.model.StoreFileDto;
import com.free.store.service.GuesthouseService;

@Controller
@RequestMapping("/guesthouse")
public class GuesthouseController {
	
	@Autowired
	private GuesthouseService guesthouseService;
	
	@RequestMapping(value="/guesthouse.html", method=RequestMethod.GET)
	public ModelAndView loginId(@RequestParam("name") String name) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("name", name);
		mav.setViewName("guesthouse");
		return mav;
	}
	
	//게스트하우스 블로그 페이지로 넘기기
	@RequestMapping(value="/blog_guesthouse.html", method=RequestMethod.GET)
	public ModelAndView mvToGuestBlog(@RequestParam("guestSeq") int guestSeq) {
		ModelAndView mav = new ModelAndView();
		GuesthouseDto guesthouseDto = guesthouseService.getGuesthouse(guestSeq);
		List<String> pics = guesthouseService.getPics(guestSeq);
		
		mav.addObject("guesthouseDto", guesthouseDto);
		mav.addObject("pics", pics);
		mav.addObject("guestSeq", guestSeq);
		mav.setViewName("guesthouse");
		return mav;
	}
	
	//메인 게스트하우스 핫 리스트
	@RequestMapping(value="/hotGuesthouseList", produces=MediaType.APPLICATION_JSON_UTF8_VALUE, method=RequestMethod.GET)
	@ResponseBody
	public List<Map<String, String>> hotGuesthouseList() {
		List<Map<String, String>> list = new ArrayList<>();
		list = guesthouseService.hotGuesthouse();
		return list;
	}
	
//	@RequestMapping("/guesthouse/{id}/{seq}")
//	public String blog(@PathVariable("id") String id, 
//			@PathVariable("seq") int seq, ModelMap map) {
//		System.out.println("id : " + id + "\t seq : " + seq);
//		String article = id + "님의 " + seq + "번글입니다.";
//		map.put("article", article);
//		return "guesthouse";
//	}
}
