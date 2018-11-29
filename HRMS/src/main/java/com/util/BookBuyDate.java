package com.util;

import java.text.ParseException;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 
 * @author pengzhipeng
 *
 */
public class BookBuyDate {

	//字符串转日期格式
		public static Date stringtoDate(String d){
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date date = null;
			
			try {
				date = sdf.parse(d);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return date;
		}
		
		
		
		/**
		 * 日期转String
		 */
		public static String DatetoString(Date dd){
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String string=null;
			try {
				string=sdf.format(dd);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			return string;
			
		}

}
