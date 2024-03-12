package org.example.service;

import org.example.entity.Interviewee;
import org.example.repository.IntervieweeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Service
public class IntervieweeService {

    @Autowired
    IntervieweeRepository intervieweeRepository;
    @Autowired
    FirebaseStorageService firebaseStorageService;
    public boolean register(@RequestParam("username") String username,
                            @RequestParam("password") String password,
                            @RequestParam("nationality") String nationality,
                            @RequestParam("visaStatus") String visaStatus,
                            @RequestParam("photo") MultipartFile photo,
                            @RequestParam("resume") MultipartFile resume) throws IOException {
        String photoUrl = firebaseStorageService.upload(photo);
        String resumeUrl = firebaseStorageService.upload(resume);
        Interviewee interviewee = new Interviewee(username,password,nationality,visaStatus,null,null,resumeUrl,photoUrl,null,"Employee");
        boolean status = false;
        if(!intervieweeRepository.existsByUsername(interviewee.getUsername())){
            intervieweeRepository.save(interviewee);
            status=true;
        }
        return status;
    }
}
