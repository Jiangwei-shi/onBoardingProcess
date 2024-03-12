package org.example.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
@Table(name = "Interviewee")
public class Candidate {
    @Id
    private String username;
    private String password;
    private String nationality;
    private String visaStatus;
    private String interviewAssignedTo;
    private String interviewStatus;
    private String resume;
    private String photo;
    private String feedback;
    private String role;
}
