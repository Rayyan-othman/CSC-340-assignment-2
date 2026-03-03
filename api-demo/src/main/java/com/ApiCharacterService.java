package com;

import java.util.List;
import java.util.Optional;

import com.CSC.ApiCharacter;

public interface ApiCharacterService {

    List<ApiCharacter> getAllCharacters();

    Optional<ApiCharacter> getCharacterById(Long id);

    ApiCharacter addCharacter(ApiCharacter c);

    Optional<ApiCharacter> updateCharacter(Long id, ApiCharacter incoming);

    boolean deleteCharacter(Long id);

    List<ApiCharacter> getByUniverse(String universe);

    List<ApiCharacter> searchByName(String nameSubstring);

}