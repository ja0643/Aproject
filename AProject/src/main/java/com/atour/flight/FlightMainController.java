package com.atour.flight;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.atour.flight.service.FlightMainService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class FlightMainController {
	
	private static final Logger logger = LoggerFactory.getLogger(FlightMainController.class);
	
	@Resource(name="flightMainService")
	private FlightMainService flightMainService;

	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/flight/main.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "flight/main";
	}
	
//	@RequestMapping(value = "/test/testList.do")
//	public ModelAndView testList(Map<String, Object> commandMap) throws Exception{
//
//		ModelAndView mv = new ModelAndView("/sample/testList");
//		
//		List<Map<String, Object>> list = sampleService.selectTestList(commandMap);
//		
//		mv.addObject("list", list);
//		
//		return mv;
//	}
	
}
