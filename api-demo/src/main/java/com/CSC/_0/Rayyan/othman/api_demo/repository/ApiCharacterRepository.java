package com.CSC._0.Rayyan.othman.api_demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.CSC._0.Rayyan.othman.api_demo.model.ApiCharacter;

public interface ApiCharacterRepository extends JpaRepository<ApiCharacter, Long> {

    List<ApiCharacter> findByRoleIgnoreCase(String role);
    List<ApiCharacter> findByNameContainingIgnoreCase(String name);

}