package org.example.service;

import org.example.entity.Candidate;
import org.example.repository.CandidateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Service
public class CandidateService {

    @Autowired
    CandidateRepository candidateRepository;
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
        Candidate candidate = new Candidate(username,password,nationality,visaStatus,null,null,resumeUrl,photoUrl,null,"Employee");
        boolean status = false;
        if(!candidateRepository.existsByUsername(candidate.getUsername())){
            System.out.println(candidate);
            candidateRepository.save(candidate);
            status=true;
        }
        return status;
    }
}
