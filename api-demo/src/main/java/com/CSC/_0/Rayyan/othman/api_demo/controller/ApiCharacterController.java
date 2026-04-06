// src/main/java/com/CSC/_0/Rayyan/othman/api_demo/controller/ApiCharacterController.java
package com.CSC._0.Rayyan.othman.api_demo.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
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

@CrossOrigin(origins = "*")
@RestController
@RequestMapping
public class ApiCharacterController {

    private final ApiCharacterService service;

    public ApiCharacterController(ApiCharacterService service) {
        this.service = service;
    }

    // Health check (quick test)
    @GetMapping("/ping")
    public String ping() {
        return "ok";
    }

    // PART B: Endpoints

    // GET all
    @GetMapping("/characters")
    public List<ApiCharacter> getAllCharacters() {
        return service.getAllCharacters();
    }

    // GET by id
    @GetMapping("/characters/{id}")
    public ResponseEntity<ApiCharacter> getCharacterById(@PathVariable Long id) {
        return service.getCharacterById(id)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    // POST create
    @PostMapping("/characters")
    public ResponseEntity<ApiCharacter> addCharacter(@RequestBody ApiCharacter c) {
        ApiCharacter saved = service.addCharacter(c);
        return ResponseEntity.status(HttpStatus.CREATED).body(saved);
    }

    // PUT update
    @PutMapping("/characters/{id}")
    public ResponseEntity<ApiCharacter> updateCharacter(@PathVariable Long id, @RequestBody ApiCharacter c) {
        return service.updateCharacter(id, c)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    // DELETE
    @DeleteMapping("/characters/{id}")
    public ResponseEntity<Void> deleteCharacter(@PathVariable Long id) {
        boolean deleted = service.deleteCharacter(id);
        return deleted ? ResponseEntity.noContent().build() : ResponseEntity.notFound().build();
    }

    // Custom Query #1: category/role filter (uses request param)
    // Example: /characters/by-role?role=Sensei
    @GetMapping("/characters/by-role")
    public List<ApiCharacter> getByRole(@RequestParam String role) {
        return service.getByRole(role);
    }

    // Custom Query #2: name contains search
    // Example: /characters/search?name=nar
    @GetMapping("/characters/search")
    public List<ApiCharacter> searchByName(@RequestParam String name) {
        return service.searchByName(name);
    }
}