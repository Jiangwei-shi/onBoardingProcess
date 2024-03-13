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
    public boolean register(Candidate candidate,
                            @RequestParam("updatePhoto") MultipartFile updatePhoto,
                            @RequestParam("updateResume") MultipartFile updateResume) throws IOException {
        String photoUrl = firebaseStorageService.upload(updatePhoto);
        String resumeUrl = firebaseStorageService.upload(updateResume);
        candidate.setPhoto(photoUrl);
        candidate.setResume(resumeUrl);
        boolean status = false;
        if(!candidateRepository.existsByUsername(candidate.getUsername())){
            candidateRepository.save(candidate);
            status=true;
        }
        return status;
    }
}
