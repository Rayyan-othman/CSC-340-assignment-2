package com.CSC._0.Rayyan.othman.api_demo.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.CSC._0.Rayyan.othman.api_demo.model.ApiCharacter;
import com.CSC._0.Rayyan.othman.api_demo.service.ApiCharacterService;

@RestController
@RequestMapping("/characters")
public class ApiCharacterController {

    private final ApiCharacterService service;

    public ApiCharacterController(ApiCharacterService service) {
        this.service = service;
    }

    // Get all characters
    @GetMapping
    public List<ApiCharacter> getAllCharacters() {
        return service.getAllCharacters();
    }

    // Get a character by its ID
    @GetMapping("/{id}")
    public ResponseEntity<ApiCharacter> getCharacterById(@PathVariable Long id) {
        return service.getCharacterById(id)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    // Add a new character
    @PostMapping
    public ResponseEntity<ApiCharacter> addCharacter(@RequestBody ApiCharacter c) {
        if (c.getName() == null || c.getDescription() == null) {
            return ResponseEntity.badRequest().build();
        }
        return ResponseEntity.ok(service.addCharacter(c));
    }

    // Update an existing character
    @PutMapping("/{id}")
    public ResponseEntity<ApiCharacter> updateCharacter(@PathVariable Long id, @RequestBody ApiCharacter c) {
        return service.updateCharacter(id, c)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    // Delete an existing character
    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteCharacter(@PathVariable Long id) {
        boolean deleted = service.deleteCharacter(id);
        if (!deleted) return ResponseEntity.notFound().build();
        return ResponseEntity.ok("Deleted character with id " + id);
    }

    // Get all characters of a given category (example: universe)
    @GetMapping("/category/{category}")
    public List<ApiCharacter> getByCategory(@PathVariable String category) {
        return service.getByCategory(category);
    }

    // Get characters whose name contains a string
    @GetMapping("/search")
    public List<ApiCharacter> search(@RequestParam String name) {
        return service.searchByName(name);
    }
}