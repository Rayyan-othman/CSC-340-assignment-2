package com.CSC._0.Rayyan.othman.api_demo.model;

import jakarta.persistence.Column;
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
    private String imageUrl;

    @Column(length = 2000)
    private String description;

    public ApiCharacter() {}

    public ApiCharacter(String name, String universe, String role, String imageUrl, String description) {
        this.name = name;
        this.universe = universe;
        this.role = role;
        this.imageUrl = imageUrl;
        this.description = description;
    }

    public Long getId() { return id; }

    public String getName() { return name; }

    public String getUniverse() { return universe; }

    public String getRole() { return role; }

    public String getImageUrl() { return imageUrl; }

    public String getDescription() { return description; }

    public void setId(Long id) { this.id = id; }

    public void setName(String name) { this.name = name; }

    public void setUniverse(String universe) { this.universe = universe; }

    public void setRole(String role) { this.role = role; }

    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }

    public void setDescription(String description) { this.description = description; }
}