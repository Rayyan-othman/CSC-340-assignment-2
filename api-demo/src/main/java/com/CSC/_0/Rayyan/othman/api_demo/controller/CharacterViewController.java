package com.CSC._0.Rayyan.othman.api_demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
        model.addAttribute("character", characterService.getCharacterById(id));
        return "character-details";
    }
}