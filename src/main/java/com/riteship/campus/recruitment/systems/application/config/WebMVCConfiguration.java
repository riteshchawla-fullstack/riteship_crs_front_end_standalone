package com.riteship.campus.recruitment.systems.application.config;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.*;
import org.springframework.web.servlet.resource.PathResourceResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@EnableWebMvc
@EnableAutoConfiguration
@Configuration
@ComponentScan("com.riteship.campus.recruitment.systems.application")
//@Import(RiteShipMvcConfiguration.class)
public class WebMVCConfiguration implements WebMvcConfigurer {

    /*@Bean
    public DispatcherServlet dispatcherServlet() {
        DispatcherServlet dispatcherServlet = new DispatcherServlet();
        dispatcherServlet.setThreadContextInheritable(true);
        dispatcherServlet.setThrowExceptionIfNoHandlerFound(true);
        return dispatcherServlet;
    }

    @Bean
    public ServletRegistrationBean dispatcherServletRegistration() {

        ServletRegistrationBean registration = new ServletRegistrationBean(dispatcherServlet());
        registration.setLoadOnStartup(0);
        registration.setName(DispatcherServletAutoConfiguration.DEFAULT_DISPATCHER_SERVLET_REGISTRATION_BEAN_NAME);
        return registration;
    }

    @Bean
    public DispatcherServletPath dispatcherServletPath() {
        return new DispatcherServletPath() {
            @Override
            public String getPath() {
                return "/";
            }
        };
    }*/

    /*@Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setViewClass(JstlView.class);
        bean.setPrefix("/views/");
        bean.setSuffix(".jsp");
        return bean;
    }*/

    /*@Override
    public void configureDefaultServletHandling(
            DefaultServletHandlerConfigurer configurer) {
       // configurer.
        configurer.enable(DispatcherServletAutoConfiguration.DEFAULT_DISPATCHER_SERVLET_REGISTRATION_BEAN_NAME);
    }*/

    /*@Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.viewResolver(viewResolver());
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
                .addResourceHandler("/static/**")
                .addResourceLocations("classpath:/static/")
                .setCachePeriod(3600)
                .resourceChain(true)
                .addResolver(new PathResourceResolver());
    }*/

    /*@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        String[] resourceHandlersType = new String[]{"layout/**", "js/**", "model/**",
                "images/**", "companyImages/**", "collegeImages/**", "css/**", "includes/**" };
        registry
                .addResourceHandler(resourceHandlersType)
                .addResourceLocations("classpath:/views/")
                .setCachePeriod(3600)
                .resourceChain(true)
                .addResolver(new PathResourceResolver());
    }*/

  /*  @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
                .addResourceHandler("/static/**")
                .addResourceLocations("classpath:/static/")
                .setCachePeriod(3600)
                .resourceChain(true)
                .addResolver(new PathResourceResolver());
    }*/

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        String[] resourceHandlersType = new String[]{"/layout/**", "/js/**", "/model/**",
                "/images/**", "/companyImages/**", "/collegeImages/**", "/css/**", "/includes/**" };
        PathResourceResolver pathResourceResolver = new PathResourceResolver();
        registry.addResourceHandler("/images/**")
                .addResourceLocations("/WEB-INF/resources/images/")
                .setCachePeriod(999999999)
                .resourceChain(true)
                .addResolver(pathResourceResolver);

        // CSS
        registry
                .addResourceHandler("/css/**")
                .addResourceLocations("/WEB-INF/resources/css/")
                .setCachePeriod(999999999)
                .resourceChain(true)
                .addResolver(pathResourceResolver);

        // JAVASCRIPT
        registry
                .addResourceHandler("/js/**")
                .addResourceLocations("/WEB-INF/resources/js/")
                .setCachePeriod(999999999)
                .resourceChain(true)
                .addResolver(pathResourceResolver);

        // Other template resource vendor files
        registry
                .addResourceHandler("/layout/**")
                .addResourceLocations("/WEB-INF/resources/layout/")
                .setCachePeriod(999999999)
                .resourceChain(true)
                .addResolver(pathResourceResolver);
        registry.addResourceHandler("/companyImages/**")
                .addResourceLocations("/WEB-INF/resources/companyImages/")
                .setCachePeriod(999999999)
                .resourceChain(true)
                .addResolver(pathResourceResolver);
        registry.addResourceHandler("/collegeImages/**")
                .addResourceLocations("/WEB-INF/resources/collegeImages/")
                .setCachePeriod(999999999)
                .resourceChain(true)
                .addResolver(pathResourceResolver);
        /*registry.addResourceHandler("/includes/**")
                .addResourceLocations("/WEB-INF/resources/views/")
                .setCachePeriod(999999999)
                .resourceChain(true)
                .addResolver(pathResourceResolver);*/
        registry.addResourceHandler("/model/**")
                .addResourceLocations("/WEB-INF/resources/model/")
                .setCachePeriod(999999999)
                .resourceChain(true)
                .addResolver(pathResourceResolver);


        /*registry
                .addResourceHandler(resourceHandlersType)
                .addResourceLocations("classpath:/views/")
                .setCachePeriod(3600)
                .resourceChain(true)
                .addResolver(pathResourceResolver);*/
    }

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.viewResolver(viewResolver());
    }

    public ViewResolver viewResolver() {
        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setViewClass(JstlView.class);
        bean.setPrefix("/WEB-INF/views/");
        bean.setSuffix(".jsp");
        return bean;
    }
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        //registry.addViewController("/").setViewName("index");
        registry.addViewController("/about").setViewName("about");
        registry.addViewController("/change-password").setViewName("change-password");
        registry.addViewController("/college").setViewName("college");
        registry.addViewController("/CollegeDetails").setViewName("CollegeDetails");
        registry.addViewController("/Colleges").setViewName("Colleges");
        registry.addViewController("/contact-confirmation").setViewName("contact-confirmation");
        registry.addViewController("/contact-us").setViewName("contact-us");
        registry.addViewController("/employee").setViewName("employee");
        registry.addViewController("/forgot-password").setViewName("forgot-password");
        registry.addViewController("/Jobs").setViewName("Jobs");
        registry.addViewController("/index").setViewName("index");
        registry.addViewController("/job").setViewName("job");
        registry.addViewController("/JobsDetails").setViewName("JobsDetails");
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/login-page").setViewName("login-page");
        registry.addViewController("/login-home").setViewName("login-home");
        registry.addViewController("/report-college").setViewName("report-college");
        registry.addViewController("/report-employee").setViewName("report-employee");
        registry.addViewController("/report-job").setViewName("report-job");
        registry.addViewController("/report-faq").setViewName("report-faq");
        registry.addViewController("/student").setViewName("student");

    }
}