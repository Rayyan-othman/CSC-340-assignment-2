package com.CSC._0.Rayyan.othman.api_demo.repository;

import com.CSC._0.Rayyan.othman.api_demo.model.ApiCharacter;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ApiCharacterRepository extends JpaRepository<ApiCharacter, Long> {

    // category query (universe)
    List<ApiCharacter> findByUniverseIgnoreCase(String universe);

    // name search query
    List<ApiCharacter> findByNameContainingIgnoreCase(String name);
}