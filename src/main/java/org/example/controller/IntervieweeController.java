package org.example.controller;

import com.google.cloud.storage.BlobId;
import org.example.service.IntervieweeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;

@Controller
public class IntervieweeController {

    @Autowired
    IntervieweeService intervieweeService;

    @GetMapping("/")
    public String homePage() {
        System.out.println("inside homePage...");
        return "loginPage";
    }

    @GetMapping("/login")
    public String loginPage() {
        return "loginPage";
    }

    @GetMapping("/registerAsInterviewee")
    public String getRegistrationPage() {
        System.out.println("inside registrationPage()");
        return "registerIntervieweePage";
    }

    @PostMapping("/registerAsInterviewee")
    public ModelAndView register(@RequestParam("username") String username,
                                 @RequestParam("password") String password,
                                 @RequestParam("nationality") String nationality,
                                 @RequestParam("visaStatus") String visaStatus,
                                 @RequestParam("photo") MultipartFile photo,
                                 @RequestParam("resume") MultipartFile resume) throws IOException {
        if (!photo.isEmpty()) {
            String contentType = photo.getContentType();
            System.out.println(contentType);
        }
        ModelAndView modelAndView = null;
        if(intervieweeService.register(username,password,nationality,visaStatus,photo,resume)){
            modelAndView = new ModelAndView("redirect:/login");
            modelAndView.addObject("registerWork", "Username created!");
        }else {
            modelAndView = new ModelAndView("redirect:/registerInterviewee");
            modelAndView.addObject("registerError", "Username already exists!");
        }
        return modelAndView;
    }

}
