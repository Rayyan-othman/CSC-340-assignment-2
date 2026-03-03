package com.CSC._0.Rayyan.othman.api_demo.controller;

import com.CSC._0.Rayyan.othman.api_demo.model.ApiCharacter;
import com.CSC._0.Rayyan.othman.api_demo.service.ApiCharacterService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.List;

@RestController
public class ApiCharacterController {

    private final ApiCharacterService service;

    public ApiCharacterController(ApiCharacterService service) {
        this.service = service;
    }

    // GET /characters
    @GetMapping("/characters")
    public List<ApiCharacter> getAllCharacters() {
        return service.getAllCharacters();
    }

    // GET /characters/{id}
    @GetMapping("/characters/{id}")
    public ResponseEntity<ApiCharacter> getCharacterById(@PathVariable Long id) {
        return service.getCharacterById(id)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    // POST /characters
    @PostMapping("/characters")
    public ResponseEntity<ApiCharacter> addCharacter(@RequestBody ApiCharacter c) {
        if (c.getName() == null || c.getDescription() == null || c.getUniverse() == null || c.getSpecies() == null) {
            return ResponseEntity.badRequest().build();
        }
        return ResponseEntity.ok(service.addCharacter(c));
    }

    // PUT /characters/{id}
    @PutMapping("/characters/{id}")
    public ResponseEntity<ApiCharacter> updateCharacter(@PathVariable Long id, @RequestBody ApiCharacter c) {
        return service.updateCharacter(id, c)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    // DELETE /characters/{id}
    @DeleteMapping("/characters/{id}")
    public ResponseEntity<String> deleteCharacter(@PathVariable Long id) {
        return service.deleteCharacter(id)
                ? ResponseEntity.ok("Deleted character with id " + id)
                : ResponseEntity.notFound().build();
    }

    // GET /characters/category/{category}  (category = universe)
    @GetMapping("/characters/category/{category}")
    public List<ApiCharacter> getByCategory(@PathVariable String category) {
        return service.getByUniverse(category);
    }

    // GET /characters/search?name=substring
    @GetMapping("/characters/search")
    public List<ApiCharacter> search(@RequestParam String name) {
        return service.searchByName(name);
    }
}