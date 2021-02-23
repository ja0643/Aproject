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
	public ModelAndView noticeList(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> param) throws Exception {
		
		ModelAndView mv = new ModelAndView("cs/noticeList");
		csVO.setCategory("noti");

//		List<Map<String, Object>> list = csService.selectNoticeList(csVO);
		
//		Map<String, Object> result = csService.selectNoticeList(csVO);
		
		
		mv.addObject("menuId", "cs");
//		mv.addObject("list", result);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/cs/noticeListAjax.do", method= {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public Object noticeListAjax(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> param, Model model, HttpServletRequest request) throws Exception {
		
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		csVO.setCategory("noti");

		param.put("pageNo", request.getParameter("pageNo"));
		param.put("countPerPage", request.getParameter("countPerPage"));
		
		Map<String, Object> result = csService.selectNoticeList(csVO, param);

		retVal.put("list", result.get("result"));
		retVal.put("page", result.get("page"));
		return retVal;
		
	}
	
	@RequestMapping(value = "/cs/noticeView.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView noticeView(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> param, HttpServletRequest request) throws Exception {
		
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
	public ModelAndView faqList(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> param) throws Exception {
		
		ModelAndView mv = new ModelAndView("cs/faqList");
		csVO.setCategory("faq");

//		List<Map<String, Object>> list = csService.selectFaqList(csVO);
		
		mv.addObject("menuId", "cs");
//		mv.addObject("list", list);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/cs/faqListAjax.do", method= {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public Object faqListAjax(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> param, Model model, HttpServletRequest request) throws Exception {
		
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		param.put("pageNo", request.getParameter("pageNo"));
		param.put("countPerPage", request.getParameter("countPerPage"));
		
		csVO.setCategory("faq");
		Map<String, Object> result = csService.selectFaqList(csVO, param);

		retVal.put("list", result.get("result"));
		retVal.put("page", result.get("page"));
		
		return retVal;
		
	}
	
	@RequestMapping(value = "/cs/qnaList.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView qnaList(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> param) throws Exception {
		
		ModelAndView mv = new ModelAndView("cs/qnaList");
		csVO.setCategory("qna");

//		List<Map<String, Object>> list = csService.selectQnaList(csVO);
		
		mv.addObject("menuId", "cs");
//		mv.addObject("list", list);
		
		return mv;
		
	}
	
	@RequestMapping(value = "/cs/qnaListAjax.do", method= {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public Object qnaListAjax(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> param, Model model, HttpServletRequest request) throws Exception {
		
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		param.put("pageNo", request.getParameter("pageNo"));
		param.put("countPerPage", request.getParameter("countPerPage"));
		
		csVO.setCategory("qna");
		Map<String, Object> result = csService.selectQnaList(csVO, param);

		retVal.put("list", result.get("result"));
		retVal.put("page", result.get("page"));
		
		return retVal;
		
	}
	
	@RequestMapping(value = "/cs/qnaView.do", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView qnaView(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> param, HttpServletRequest request) throws Exception {
		
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
	public ModelAndView qnaWrite(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> param, HttpServletRequest request) throws Exception {
		
		String mode = request.getParameter("mode");
		ModelAndView mv = new ModelAndView("");
		Map<String,Object> resultView = new HashMap<String,Object>();

		mv.addObject("menuId", "cs");
		csVO.setCategory("qna");
		
		if("W".equals(mode)) {
			mv = new ModelAndView("cs/qnaWrite");
		}else if("M".equals(mode)) {
			mv = new ModelAndView("cs/qnaModify");
			resultView = csService.selectQnaView(csVO);
			mv.addObject("vo", resultView.get("resultList"));
			
		}
		
		
		return mv;
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/cs/qnaInsert.do", method= {RequestMethod.GET, RequestMethod.POST}, produces = "application/text; charset=utf8")
	public String qnaInsert(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> param) throws Exception {
		
		String message = "";
		
		csVO.setCategory("qna");
		int result = csService.qnaInsert(csVO);
		
		if(result == 1) {
			logger.debug("게시글 등록 성공");
			message = "게시글이 저장되었습니다.";
			
		}else {
			logger.debug("게시글 등록 실패");
			message = "게시글 저장이 실패되었습니다. 관리자에게 문의하세요";
		}
		
		return message;
	}
	
	@ResponseBody
	@RequestMapping(value = "/cs/qnaUpdate.do", method= {RequestMethod.GET, RequestMethod.POST}, produces = "application/text; charset=utf8")
	public String qnaUpdate(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> param) throws Exception {
		
		String message = "";
		
		csVO.setCategory("qna");
		int result = csService.qnaUpdate(csVO);
		
		if(result == 1) {
			logger.debug("게시글 수정 성공");
			message = "게시글이 수정되었습니다.";
			
		}else {
			logger.debug("게시글 수정 실패");
			message = "게시글 수정이 실패되었습니다. 관리자에게 문의하세요";
		}
		
		return message;
	}
	
	@ResponseBody
	@RequestMapping(value = "/cs/qnaDelete.do", method= {RequestMethod.GET, RequestMethod.POST}, produces = "application/text; charset=utf8")
	public String qnaDelete(@ModelAttribute("csVO") CsVO csVO, Map<String, Object> param) throws Exception {
		
		String message = "";
		
		csVO.setCategory("qna");
		int result = csService.qnaDelete(csVO);
		
		if(result == 1) {
			logger.debug("게시글 삭제 성공");
			message = "게시글이 삭제되었습니다.";
			
		}else {
			logger.debug("게시글 삭제 실패");
			message = "게시글 삭제가 실패되었습니다. 관리자에게 문의하세요";
		}
		
		return message;
	}
	
}
