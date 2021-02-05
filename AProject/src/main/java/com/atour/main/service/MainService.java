package com.atour.main.service;

import java.util.List;
import java.util.Map;

public interface MainService {

	List<Map<String, Object>> selectTestList(Map<String, Object> commandMap) throws Exception;


}
