package springmvc;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "springmvc")
public class Config {
	
	@Bean
	public InternalResourceViewResolver resolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver("/WEB-INF/views/", ".jsp");
		return viewResolver;
	}
	
//	@Bean
//	public CommonsMultipartResolver resolver1() {
//		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
//		return multipartResolver;
//		
//	}
}
