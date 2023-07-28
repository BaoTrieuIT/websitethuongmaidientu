package com.poly.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.poly.interceptor.LoggerInterceptor;
import com.poly.interceptor.SecurityInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

	@Autowired
	LoggerInterceptor logger;

	@Autowired
	SecurityInterceptor aut;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(logger).addPathPatterns("/*", "/**").excludePathPatterns("/forAdmin/**", "/forUser/**");

		registry.addInterceptor(aut).addPathPatterns("/home/my_profile", "/home/checkout-1", "/home/checkout-2", "/home/checkout-3", "/home/cart",  "/home/cart/**", "/home/cart/*")
				.excludePathPatterns("/forAdmin/**", "/forUser/**");

	}

}
