package com.CSC._0.Rayyan.othman.api_demo.service;

import com.CSC._0.Rayyan.othman.api_demo.model.ApiCharacter;
import com.CSC._0.Rayyan.othman.api_demo.repository.ApiCharacterRepository;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

public interface ApiCharacterService {

    List<ApiCharacter> getAllCharacters();

    Optional<ApiCharacter> getCharacterById(Long id);

    ApiCharacter addCharacter(ApiCharacter c);

    Optional<ApiCharacter> updateCharacter(Long id, ApiCharacter incoming);

    boolean deleteCharacter(Long id);

    List<ApiCharacter> getByUniverse(String universe);

    List<ApiCharacter> searchByName(String nameSubstring);

}