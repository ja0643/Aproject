package com.atour.flight;

import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.atour.api.ApiExplorer;
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
	 * flightMain
	 * @throws IOException 
	 */
	@RequestMapping(value = "/flight/main.do", method = RequestMethod.GET)
	public ModelAndView flightMain(Locale locale, Model model) throws Exception {
		
		ModelAndView mv = new ModelAndView("flight/main");
		
		Map<String, Object> retVal = new HashMap<String, Object>();
		
//		retVal = ApiExplorer.FlightOpratInfoApi();
		retVal = flightMainService.flightList();
//		retVal = ApiExplorer.ArprtApi();

		mv.addObject("menuId", "filght");
		mv.addObject("result", retVal.get("list"));
		
		return mv;
	}
	
	
}
