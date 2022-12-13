package ctxlistener;

import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import connectionprovider.ConnectionProvider;

import loadprop.LoadProperty;

public class CtxListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		try{
		ServletContext context=event.getServletContext();
		String path=context.getRealPath("/WEB-INF/classes/property/driver.properties");
		LoadProperty.loadProperty(path);
		Connection connection=ConnectionProvider.getInstance().getConnection();
		System.out.println(connection);
		context.setAttribute("Connection",connection);
		System.out.println("Connect to DB.");
		}catch (Exception e) {
			System.out.println("Connection Not Found.....");
		}
	}
	

}
