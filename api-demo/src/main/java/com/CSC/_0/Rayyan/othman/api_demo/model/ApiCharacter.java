package com.CSC._0.Rayyan.othman.api_demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class ApiCharacter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String universe;
    private String role;
    private String description;
    private String imageUrl;

    public ApiCharacter() {}

    public ApiCharacter(String name, String universe, String role, String description) {
        this.name = name;
        this.universe = universe;
        this.role = role;
        this.description = description;
    }

    public Long getId() { return id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getUniverse() { return universe; }
    public void setUniverse(String universe) { this.universe = universe; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
}