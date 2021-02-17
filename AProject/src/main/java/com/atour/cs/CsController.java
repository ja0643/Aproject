package com.atour.cs;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.atour.cs.service.CsService;
import com.atour.cs.vo.CsVO;
import com.atour.flight.FlightMainController;
import com.atour.flight.service.FlightMainService;

@Controller
public class CsController {
	
	private static final Logger logger = LoggerFactory.getLogger(FlightMainController.class);
	
	@Resource(name="csService")
	private CsService csService;

	
	@RequestMapping(value = "/cs/noticeList.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView noticeList(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> commandMap) throws Exception {
		
		ModelAndView mv = new ModelAndView("cs/noticeList");
		csVO.setCategory("noti");

		List<Map<String, Object>> list = csService.selectNoticeList(csVO);
		
		mv.addObject("list", list);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/cs/noticeListAjax.do", method= {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public Object noticeListAjax(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> commandMap, Model model) throws Exception {
		
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		csVO.setCategory("noti");
		List<Map<String, Object>> list = csService.selectNoticeList(csVO);
		System.out.println("dddddd:::::::::"+ list);
		retVal.put("list", list );
		return retVal;
//		return "cs/noticeList";
		
	}
}
