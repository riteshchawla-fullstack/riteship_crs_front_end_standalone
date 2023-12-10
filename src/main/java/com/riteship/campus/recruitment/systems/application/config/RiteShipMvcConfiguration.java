package com.riteship.campus.recruitment.systems.application.config;

//@Configuration
public class RiteShipMvcConfiguration {//        implements WebApplicationInitializer {

    /*@Override
    public void onStartup(jakarta.servlet.ServletContext servletContext) throws jakarta.servlet.ServletException {
        WebApplicationContext webApplicationContext
                = new AnnotationConfigWebApplicationContext();
        // Creating a dispatcher servlet object
        Servlet dispatcherServlet
                = new DispatcherServlet(webApplicationContext);
        jakarta.servlet.RequestDispatcher requestDispatcher = dispatcherServlet.getServletConfig().getServletContext().getRequestDispatcher("/");
        // Registering Dispatcher Servlet
        // with Servlet Context
        ServletRegistration
                .Dynamic riteShipDispatcherServlet
                = servletContext.addServlet(DispatcherServletAutoConfiguration.DEFAULT_DISPATCHER_SERVLET_REGISTRATION_BEAN_NAME, (jakarta.servlet.Servlet) dispatcherServlet);

        // Setting load on startup
        riteShipDispatcherServlet.setLoadOnStartup(1);

        // Adding mapping URL
        riteShipDispatcherServlet.addMapping("/*");
    }*/
}