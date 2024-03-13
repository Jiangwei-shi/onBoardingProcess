package org.example.controller;

import org.example.entity.Candidate;
import org.example.service.CandidateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller
public class CandidateController {

    @Autowired
    CandidateService candidateService;

    @GetMapping("/")
    public String homePage() {
        System.out.println("inside homePage...");
        return "loginPage";
    }

    @GetMapping("/login")
    public String loginPage() {
        return "loginPage";
    }

    @GetMapping("/registerAsCandidate")
    public String getRegistrationPage() {
        System.out.println("inside registrationPage()");
        return "registerCandidatePage";
    }

    @PostMapping("/registerAsCandidate")
    public ModelAndView register(Candidate candidate,
                                 @RequestParam("updatePhoto") MultipartFile updatePhoto,
                                 @RequestParam("updateResume") MultipartFile updateResume) throws IOException {

        ModelAndView modelAndView;
        if(candidateService.register(candidate,updatePhoto,updateResume)){
            modelAndView = new ModelAndView("redirect:/login");
            modelAndView.addObject("registerWork", "Username created!");
        }else {
            modelAndView = new ModelAndView("redirect:/registerCandidate");
            modelAndView.addObject("registerError", "Username already exists!");
        }
        return modelAndView;
    }

}
