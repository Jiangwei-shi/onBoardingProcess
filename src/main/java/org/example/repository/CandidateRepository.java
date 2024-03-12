package org.example.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import org.example.entity.Candidate;

public interface CandidateRepository extends JpaRepository<Candidate, String>{
    public boolean existsByUsername(String username);

}
