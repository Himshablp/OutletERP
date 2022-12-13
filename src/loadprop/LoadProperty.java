package loadprop;

import java.io.FileInputStream;
import java.util.Enumeration;
import java.util.Properties;

public class LoadProperty {
	public static void loadProperty(String path){
		try{
		FileInputStream inputStream=new FileInputStream(path);
		Properties properties=new Properties();
		properties.load(inputStream);
		Enumeration enm=properties.propertyNames();
		while(enm.hasMoreElements()){
			String key=(String)enm.nextElement();
			String value=properties.getProperty(key);
			System.setProperty(key, value);
		}
		}catch (Exception e) {
			System.out.println(e);
		}
		
	}

}
