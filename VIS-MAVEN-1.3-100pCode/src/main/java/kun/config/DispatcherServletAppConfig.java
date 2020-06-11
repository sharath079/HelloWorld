package kun.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "kun")
@EnableWebMvc
public class DispatcherServletAppConfig {
	
	@Bean
	public InternalResourceViewResolver createResolver() {
		
		InternalResourceViewResolver ivr=new InternalResourceViewResolver();
		
		ivr.setPrefix("/WEB-INF/pages/");
		ivr.setSuffix(".jsp");
		return ivr;
	}
	
	@Bean(name = "messageSource")
	public ResourceBundleMessageSource createMessage() {
		
		ResourceBundleMessageSource rbms=null;
		rbms=new ResourceBundleMessageSource();
		
		rbms.setBasenames(new String[]{"kun/commons/search_validations","kun/commons/user_registration_validations",
				"kun/commons/ins_validations","kun/commons/veh_registration"});
		return rbms;
	}
}
