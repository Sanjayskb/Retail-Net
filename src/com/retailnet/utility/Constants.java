/**
 * 
 */
package com.retailnet.utility;

import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.tomcat.jni.File;

/**
 * @author APPLE COMPUTER
 *
 */
public class Constants {
	public final static String FILE_PATH = "E:\\project 1\\images\\products\\";
	private static Properties p=new Properties(); 
	
	static {
		
		 try {
			//FileReader reader=new FileReader("constants.properties"); 
			
			//InputStream reader = getClass().getClassLoader().getResourceAsStream("config.properties"); 
			InputStream reader = ClassLoader.class.getResourceAsStream("constants.properties");
			System.out.println("reader : " + reader.read());
			 p.load(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}  
	}
	
	public static String getProperty(String key) {
		return p.getProperty(key);
	}
	
}
