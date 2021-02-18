package com.atour.cs;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
		
		mv.addObject("menuId", "cs");
		mv.addObject("list", list);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/cs/noticeListAjax.do", method= {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public Object noticeListAjax(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> commandMap, Model model) throws Exception {
		
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		csVO.setCategory("noti");
		List<Map<String, Object>> list = csService.selectNoticeList(csVO);

		retVal.put("list", list );
		return retVal;
		
	}
	
	@RequestMapping(value = "/cs/noticeView.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView noticeView(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> commandMap, HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView("cs/noticeView");
		Map<String,Object> resultView = new HashMap<String,Object>();
		
		csVO.setCategory("noti");
		csVO.setSeq(Integer.parseInt(request.getParameter("seq")));	
		resultView = csService.selectNoticeView(csVO);

		mv.addObject("menuId", "cs");
		mv.addObject("vo", resultView);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/cs/faqList.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView faqList(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> commandMap) throws Exception {
		
		ModelAndView mv = new ModelAndView("cs/faqList");
		csVO.setCategory("faq");

		List<Map<String, Object>> list = csService.selectFaqList(csVO);
		
		mv.addObject("menuId", "cs");
		mv.addObject("list", list);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/cs/faqListAjax.do", method= {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public Object faqListAjax(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> commandMap, Model model) throws Exception {
		
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		csVO.setCategory("faq");
		List<Map<String, Object>> list = csService.selectFaqList(csVO);

		retVal.put("list", list );
		return retVal;
		
	}
	
	@RequestMapping(value = "/cs/qnaList.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView qnaList(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> commandMap) throws Exception {
		
		ModelAndView mv = new ModelAndView("cs/qnaList");
		csVO.setCategory("qna");

		List<Map<String, Object>> list = csService.selectQnaList(csVO);
		
		mv.addObject("menuId", "cs");
		mv.addObject("list", list);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/cs/qnaListAjax.do", method= {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public Object qnaListAjax(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> commandMap, Model model) throws Exception {
		
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		csVO.setCategory("qna");
		List<Map<String, Object>> list = csService.selectQnaList(csVO);

		retVal.put("list", list );
		return retVal;
		
	}
	
	@RequestMapping(value = "/cs/qnaView.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView qnaView(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> commandMap, HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView("cs/qnaView");
		Map<String,Object> resultView = new HashMap<String,Object>();
		
		csVO.setCategory("qna");
		csVO.setSeq(Integer.parseInt(request.getParameter("seq")));	
		resultView = csService.selectQnaView(csVO);

		mv.addObject("menuId", "cs");
		mv.addObject("vo", resultView.get("resultList"));
		mv.addObject("reply", resultView.get("resultReply"));
		
		return mv;
		
	}
	
	@RequestMapping(value = "/cs/qnaWrite.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView qnaWrite(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> commandMap) throws Exception {
		
		ModelAndView mv = new ModelAndView("cs/qnaWrite");
		csVO.setCategory("qna");
		mv.addObject("menuId", "cs");
		
		return mv;
		
	}
	
	@RequestMapping(value = "/cs/qnaInsert.do", method= {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody void qnaInsert(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> commandMap) throws Exception {
		
		csVO.setCategory("qna");
		csService.qnaInsert(csVO);
		
	}
}
