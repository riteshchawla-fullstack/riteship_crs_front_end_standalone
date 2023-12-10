package com.riteship.campus.recruitment.systems.application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.actuate.autoconfigure.security.servlet.ManagementWebSecurityAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.autoconfigure.security.servlet.UserDetailsServiceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

//@ServletComponentScan
@SpringBootApplication(scanBasePackages = "com.riteship.campus.recruitment.systems.application",
		exclude = {ManagementWebSecurityAutoConfiguration.class, SecurityAutoConfiguration.class, UserDetailsServiceAutoConfiguration.class})
public class RiteShipCampusRecruitmentSystemsOriginalApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(RiteShipCampusRecruitmentSystemsOriginalApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(RiteShipCampusRecruitmentSystemsOriginalApplication.class, args);
	}

}
