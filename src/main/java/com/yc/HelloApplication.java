package com.yc;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.yc.listeners.InitListener;



/**
 * 1.mybatis启动方式可以在mapperceng 不需要加mapper注解,但是一定要在启动类的时候加上@MapperScan<br/>
 * 2.mybatis在mybatis接口加上@Mapper注入mybatis容器,就不需要在启动类的时候加上@MapperScan
 * @author Administrator
 *
 */

@EnableTransactionManagement
@SpringBootApplication
@MapperScan(basePackages={"com.yc.dao.mapper"})
public class HelloApplication {
	
		@Bean
	 public ServletListenerRegistrationBean servletListenerRegistrationBean(){
	   ServletListenerRegistrationBean servletListenerRegistrationBean = new ServletListenerRegistrationBean();
	   servletListenerRegistrationBean.setListener(new InitListener());
	   return servletListenerRegistrationBean;
	 }

	public static void main(String[] args) {
		SpringApplication.run(HelloApplication.class, args);
	}

}
