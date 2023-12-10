package com.riteship.campus.recruitment.systems.application.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping("/RiteShip")
public class RIteShipLoginController {

    @GetMapping("/redirectToLogin")
    public RedirectView redirectToLogin(HttpServletRequest request,
               HttpServletResponse response, RedirectAttributes attributes) {
        attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
        attributes.addAttribute("attribute", "redirectWithRedirectView");
        attributes.addAttribute("msg", request.getParameter("msg"));
        return new RedirectView(StringUtils.join("login?msg=", request.getParameter("msg")));
    }

    @GetMapping("/redirectToChangePassword")
    public RedirectView redirectTChangePassword(HttpServletRequest request,
                                        HttpServletResponse response, RedirectAttributes attributes) {
        attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
        attributes.addAttribute("attribute", "redirectWithRedirectView");
        attributes.addAttribute("msg", request.getParameter("msg"));
        return new RedirectView(StringUtils.join("login?msg=", request.getParameter("msg")));
    }

    @GetMapping("/redirectToLoginHome")
    public RedirectView redirectToLoginHome(HttpServletRequest request,
                                                HttpServletResponse response, RedirectAttributes attributes) {
        attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
        attributes.addAttribute("attribute", "redirectWithRedirectView");
        attributes.addAttribute("msg", request.getParameter("msg"));
        return new RedirectView(StringUtils.join("login-home?msg=", request.getParameter("msg")));
    }

    @GetMapping("/redirectToCompanyLogin")
    public RedirectView redirectToCompanyLogin(HttpServletRequest request,
                                            HttpServletResponse response, RedirectAttributes attributes) {
        attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
        attributes.addAttribute("attribute", "redirectWithRedirectView");
        attributes.addAttribute("msg", request.getParameter("msg"));
        return new RedirectView(StringUtils.join("login-home?msg=", request.getParameter("msg")));
    }

    @GetMapping("/redirectToReportEmployee")
    public RedirectView redirectToReportEmployee(HttpServletRequest request,
                                               HttpServletResponse response, RedirectAttributes attributes) {
        attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
        attributes.addAttribute("attribute", "redirectWithRedirectView");
        attributes.addAttribute("msg", request.getParameter("msg"));
        return new RedirectView(StringUtils.join("report-employee?msg=", request.getParameter("msg")));
    }

    @GetMapping("/redirectToEmployee")
    public RedirectView redirectToEmployee(HttpServletRequest request,
                                                 HttpServletResponse response, RedirectAttributes attributes) {
        attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
        attributes.addAttribute("attribute", "redirectWithRedirectView");
        attributes.addAttribute("msg", request.getParameter("msg"));
        return new RedirectView(StringUtils.join("employee?msg=", request.getParameter("msg")));
    }

    @GetMapping("/redirectToRegister")
    public RedirectView redirectToRegister(HttpServletRequest request,
                                           HttpServletResponse response, RedirectAttributes attributes) {
        attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
        attributes.addAttribute("attribute", "redirectWithRedirectView");
        attributes.addAttribute("msg", request.getParameter("msg"));
        return new RedirectView(StringUtils.join("register?msg=", request.getParameter("msg")));
    }

    @GetMapping("/redirectToReportFAQ")
    public RedirectView redirectToReportFAQ(HttpServletRequest request,
                                           HttpServletResponse response, RedirectAttributes attributes) {
        attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
        attributes.addAttribute("attribute", "redirectWithRedirectView");
        attributes.addAttribute("msg", request.getParameter("msg"));
        return new RedirectView(StringUtils.join("report-faq?msg=", request.getParameter("msg")));
    }

    @GetMapping("/redirectToReportJob")
    public RedirectView redirectToReportJob(HttpServletRequest request,
                                            HttpServletResponse response, RedirectAttributes attributes) {
        attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
        attributes.addAttribute("attribute", "redirectWithRedirectView");
        attributes.addAttribute("msg", request.getParameter("msg"));
        return new RedirectView(StringUtils.join("report-job?msg=", request.getParameter("msg")));
    }

    @GetMapping("/redirectToJobsDetails")
    public RedirectView redirectToJobsDetails(HttpServletRequest request,
                                            HttpServletResponse response, RedirectAttributes attributes) {
        attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
        attributes.addAttribute("attribute", "redirectWithRedirectView");
        attributes.addAttribute("msg", request.getParameter("msg"));
        return new RedirectView(StringUtils.join("JobsDetails?msg=", request.getParameter("msg")));
    }

    @GetMapping("/redirectToStudentLogin")
    public RedirectView redirectToStudentLogin(HttpServletRequest request,
                                              HttpServletResponse response, RedirectAttributes attributes) {
        attributes.addFlashAttribute("flashAttribute", "redirectWithRedirectView");
        attributes.addAttribute("attribute", "redirectWithRedirectView");
        attributes.addAttribute("msg", request.getParameter("msg"));
        return new RedirectView(StringUtils.join("student?msg=", request.getParameter("msg")));
    }
}
