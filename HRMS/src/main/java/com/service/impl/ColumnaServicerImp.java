package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.jfree.chart.JFreeChart;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;
import org.springframework.stereotype.Service;

import com.dao.IDeptDao;
import com.pojo.Dept;
import com.service.ColumnarService;
import com.util.ColumnarTools;
@Service("columnarService")
public class ColumnaServicerImp implements ColumnarService {

	@Resource
	private IDeptDao iDeptDao;
	
	
	
	public IDeptDao getiDeptDao() {
		return iDeptDao;
	}

	public void setiDeptDao(IDeptDao iDeptDao) {
		this.iDeptDao = iDeptDao;
	}

	public JFreeChart createColumnarTools() {
		// TODO Auto-generated method stub
	    // 获得数据
	    CategoryDataset dataset = getDataSet();
	    // 获取柱状图工具类创建的柱状图，（将数据集传入）
	    JFreeChart chart = ColumnarTools.createCoColumnar(dataset);
	    return chart;
	
	}

	//获取一个演示用的组合数据集对象 为柱状图添加数据

	private static CategoryDataset getDataSet() {
	    // 数据可以从数据库中得到
		
		
	    DefaultCategoryDataset dataset = new DefaultCategoryDataset();
	    dataset.addValue(88, "专员", "人事部");
	    dataset.addValue(86, "经理", "人事部");
	    dataset.addValue(85, "会计", "财务部");
	    dataset.addValue(84, "经理", "财务部");
	    dataset.addValue(70, "主管", "研发部");
	    dataset.addValue(65, "技术员", "研发部");
	    dataset.addValue(90, "秘书", "总裁办");
	    dataset.addValue(88, "Manager", "总裁办");
	   
	    return dataset;
	}
	

}
