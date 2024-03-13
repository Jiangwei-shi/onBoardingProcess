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
    private String batch;
    private String firstName;
    private String lastName;
    private String dob;
    private String email;
    private String phone;
    private String address;
    private String city;
    private String state;
    private String county;
    private String zipcode;
    private String createBy;
    private String createOn;
    private String lastUpdateBy;
    private String lastUpdateOn;
    private String nationality;
    private String visaStatus;
    private String interviewBy;
    private String interviewOn;
    private String interviewStatus;
    private String resume;
    private String photo;
//    private String feedback;
    private String status;
    private String progress;
    private String role;
}
