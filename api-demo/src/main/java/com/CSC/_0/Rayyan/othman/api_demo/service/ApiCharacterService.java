package com.CSC._0.Rayyan.othman.api_demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.CSC._0.Rayyan.othman.api_demo.model.ApiCharacter;
import com.CSC._0.Rayyan.othman.api_demo.repository.ApiCharacterRepository;

@Service
public class ApiCharacterService {

    private final ApiCharacterRepository repository;

    public ApiCharacterService(ApiCharacterRepository repository) {
        this.repository = repository;
    }

    public List<ApiCharacter> getAllCharacters() {
        return repository.findAll();
    }

    public Optional<ApiCharacter> getCharacterById(Long id) {
        return repository.findById(id);
    }

    public ApiCharacter addCharacter(ApiCharacter c) {
        return repository.save(c);
    }

    public Optional<ApiCharacter> updateCharacter(Long id, ApiCharacter updated) {
        return repository.findById(id).map(existing -> {
            existing.setName(updated.getName());
            existing.setDescription(updated.getDescription());
            existing.setUniverse(updated.getUniverse());
            existing.setSpecies(updated.getSpecies());
            return repository.save(existing);
        });
    }

    public boolean deleteCharacter(Long id) {
        if (!repository.existsById(id)) return false;
        repository.deleteById(id);
        return true;
    }

    public List<ApiCharacter> getByCategory(String category) {
        return repository.findByUniverseIgnoreCase(category);
    }

    public List<ApiCharacter> searchByName(String substring) {
        return repository.findByNameContainingIgnoreCase(substring);
    }
}