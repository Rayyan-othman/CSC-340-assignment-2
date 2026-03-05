// src/main/java/com/CSC/_0/Rayyan/othman/api_demo/service/ApiCharacterService.java
package com.CSC._0.Rayyan.othman.api_demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.CSC._0.Rayyan.othman.api_demo.model.ApiCharacter;
import com.CSC._0.Rayyan.othman.api_demo.repository.ApiCharacterRepository;

@Service
public class ApiCharacterService {

    private final ApiCharacterRepository repo;

    public ApiCharacterService(ApiCharacterRepository repo) {
        this.repo = repo;
    }

    public List<ApiCharacter> getAllCharacters() {
        return repo.findAll();
    }

    public Optional<ApiCharacter> getCharacterById(Long id) {
        return repo.findById(id);
    }

    public ApiCharacter addCharacter(ApiCharacter c) {
        return repo.save(c);
    }

    public Optional<ApiCharacter> updateCharacter(Long id, ApiCharacter updated) {
        return repo.findById(id).map(existing -> {
            existing.setName(updated.getName());
            existing.setUniverse(updated.getUniverse());
            existing.setRole(updated.getRole());
            existing.setImageUrl(updated.getImageUrl());
            existing.setDescription(updated.getDescription());
            return repo.save(existing);
        });
    }

    public boolean deleteCharacter(Long id) {
        if (!repo.existsById(id)) return false;
        repo.deleteById(id);
        return true;
    }

    // ✅ this fixes your "undefined" call
    public List<ApiCharacter> getByRole(String role) {
        return repo.findByRoleIgnoreCase(role);
    }

    public List<ApiCharacter> searchByName(String name) {
        return repo.findByNameContainingIgnoreCase(name);
    }
}