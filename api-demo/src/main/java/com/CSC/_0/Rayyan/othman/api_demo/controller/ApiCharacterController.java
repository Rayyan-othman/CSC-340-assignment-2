package com.CSC._0.Rayyan.othman.api_demo.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.CSC._0.Rayyan.othman.api_demo.model.ApiCharacter;
import com.CSC._0.Rayyan.othman.api_demo.service.ApiCharacterService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/characters")
public class ApiCharacterController {

    private final ApiCharacterService service;

    public ApiCharacterController(ApiCharacterService service) {
        this.service = service;
    }

    @GetMapping("/ping")
    public String ping() {
        return "ok";
    }

    @GetMapping
    public List<ApiCharacter> getAllCharacters() {
        return service.getAllCharacters();
    }

    @GetMapping("/{id}")
    public ResponseEntity<ApiCharacter> getCharacterById(@PathVariable Long id) {
        return service.getCharacterById(id)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<ApiCharacter> addCharacter(@RequestBody ApiCharacter c) {
        ApiCharacter saved = service.addCharacter(c);
        return ResponseEntity.status(HttpStatus.CREATED).body(saved);
    }

    @PutMapping("/{id}")
    public ResponseEntity<ApiCharacter> updateCharacter(@PathVariable Long id, @RequestBody ApiCharacter c) {
        return service.updateCharacter(id, c)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCharacter(@PathVariable Long id) {
        service.deleteCharacter(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/by-role")
    public List<ApiCharacter> getByRole(@RequestParam String role) {
        return service.getByRole(role);
    }

    @GetMapping("/search")
    public List<ApiCharacter> searchByName(@RequestParam String name) {
        return service.searchByName(name);
    }
}