package com.atour.flight.service;

import java.util.List;
import java.util.Map;

public interface FlightMainService {

	List<Map<String, Object>> selectTestList(Map<String, Object> commandMap) throws Exception;

	Map<String, Object> flightList() throws Exception;


}
