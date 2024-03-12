package org.example.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import org.example.entity.Interviewee;

public interface IntervieweeRepository extends JpaRepository<Interviewee, String>{
    public boolean existsByUsername(String username);

}
