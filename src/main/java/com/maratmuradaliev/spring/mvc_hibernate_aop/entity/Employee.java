package com.maratmuradaliev.spring.mvc_hibernate_aop.entity;


import jakarta.persistence.*;
import jakarta.validation.constraints.*;


@Entity
@Table(name = "employees")
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "name")
    @Size(min = 2, message = "name must be min 2 symbols")
    private String name;
    @Column(name = "surname")
    @NotBlank(message = "surname is required field")
    private String surname;
    @Column(name = "department")
    private String department;


    @Column(name = "salary")
    @Min(value = 500, message = "must be greater than 499")
    @Max(value = 1000, message = "must be less than 1001")
    private int salary;

    @Column(name = "phone_number")
    @Pattern(regexp = "\\d{3}-\\d{2}-\\d{2}", message = "please use pattern XXX-XX-XX")
    private String phoneNumber;

    @Column(name = "email")
    @Email()
    private String email;

    @Column(name = "nationality")
    private String nationality;

    public Employee() {
    }

    public Employee(String name, String surname, String department, int salary, String phoneNumber,
                    String email, String nationality) {


        this.name = name;
        this.surname = surname;
        this.department = department;
        this.salary = salary;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.nationality = nationality;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }
}
