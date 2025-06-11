package com.csc340.crud_jpa_demo.student;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "students")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long studentId;
    private String name;
    private String email;
    private String major;
    private double gpa;
    private String profilePicturePath;
    private String role;
    private String password;

    public Student() {
    }

    public Student(Long studentId, String name, String email, String major, double gpa, String profilePicturePath,
            String role, String password) {
        this.studentId = studentId;
        this.name = name;
        this.email = email;
        this.major = major;
        this.gpa = gpa;
        this.profilePicturePath = profilePicturePath;
        this.role = role;
        this.password = password;
    }

    public Student(String name, String email, String major, double gpa, String profilePicturePath, String role,
            String password) {
        this.name = name;
        this.email = email;
        this.major = major;
        this.gpa = gpa;
        this.profilePicturePath = profilePicturePath;
        this.role = role;
        this.password = password;
    }

    public Long getStudentId() {
        return studentId;
    }

    public void setStudentId(Long id) {
        this.studentId = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public double getGpa() {
        return gpa;
    }

    public void setGpa(double gpa) {
        this.gpa = gpa;
    }

    public String getProfilePicturePath() {
        return profilePicturePath;
    }

    public void setProfilePicturePath(String profilePicturePath) {
        this.profilePicturePath = profilePicturePath;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
