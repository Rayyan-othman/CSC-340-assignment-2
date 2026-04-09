package com.CSC._0.Rayyan.othman.api_demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.CSC._0.Rayyan.othman.api_demo.model.ApiCharacter;
import com.CSC._0.Rayyan.othman.api_demo.service.ApiCharacterService;

@Controller
@RequestMapping("/characters")
public class CharacterViewController {

    private final ApiCharacterService characterService;

    public CharacterViewController(ApiCharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping
    public String getAllCharacters(Model model) {
        model.addAttribute("characterList", characterService.getAllCharacters());
        return "character-list";
    }

    @GetMapping("/{id}")
    public String getCharacterById(@PathVariable Long id, Model model) {
        ApiCharacter character = characterService.getCharacterById(id)
                .orElseThrow(() -> new RuntimeException("Character not found with id: " + id));
        model.addAttribute("character", character);
        return "character-details";
    }

    @GetMapping("/create")
    public String showCreateForm(Model model) {
        model.addAttribute("character", new ApiCharacter());
        return "character-create";
    }

    @PostMapping("/create")
    public String createCharacter(ApiCharacter character) {
        ApiCharacter saved = characterService.addCharacter(character);
        return "redirect:/characters/" + saved.getId();
    }

    @GetMapping("/update/{id}")
    public String showUpdateForm(@PathVariable Long id, Model model) {
        ApiCharacter character = characterService.getCharacterById(id)
                .orElseThrow(() -> new RuntimeException("Character not found with id: " + id));
        model.addAttribute("character", character);
        return "character-update";
    }

    @PostMapping("/update")
    public String updateCharacter(ApiCharacter character) {
        ApiCharacter updated = characterService.updateCharacter(character.getId(), character)
                .orElseThrow(() -> new RuntimeException("Character not found with id: " + character.getId()));
        return "redirect:/characters/" + updated.getId();
    }

    @GetMapping("/delete/{id}")
    public String deleteCharacter(@PathVariable Long id) {
        characterService.deleteCharacter(id);
        return "redirect:/characters";
    }
}