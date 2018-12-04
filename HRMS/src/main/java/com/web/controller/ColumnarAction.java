package com.web.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.JFreeChart;
import org.jfree.chart.servlet.ServletUtilities;
import org.jfree.data.general.Dataset;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.service.ColumnarService;
@Controller
public class ColumnarAction {

	@Resource
	private ColumnarService columnarService;
	
	
	public ColumnarService getColumnarService() {
		return columnarService;
	}


	public void setColumnarService(ColumnarService columnarService) {
		this.columnarService = columnarService;
	}

	
	@RequestMapping("/dataSet")
	public String dataset(){
		
		return "dataSet";
	}

	@RequestMapping("/getColumnChart")
	public ModelAndView getColumnChart(HttpServletRequest request,
	        HttpServletResponse response, ModelMap modelMap) throws Exception {
	    // 在业务层获取创建的柱状图（此时柱状图已经创建完成的）
	    JFreeChart chart = columnarService.createColumnarTools();
	    // 将图形转换为图片传到dateSet.jsp
	    String fileName = ServletUtilities.saveChartAsJPEG(chart, 700, 400,
	            null, request.getSession());
	    String chartURL = request.getContextPath() + "/chart?filename="
	            + fileName;
	    modelMap.put("chartColumnURL", chartURL);
	    ModelAndView mav = new ModelAndView("dataSet",modelMap);
	    return mav;
	}
	
}
