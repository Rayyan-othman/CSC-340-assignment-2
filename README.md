# Naruto Character CRUD API - Spring Boot Demo

https://uncg-my.sharepoint.com/:v:/r/personal/raothman_uncg_edu/Documents/CSC%20340%20SYSTEM%20ENGINEERING/video1861765722.mp4?csf=1&web=1&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=GUpyzJ


A RESTful API for managing Naruto characters, built with Spring Boot, Spring Data JPA, and PostgreSQL. This project demonstrates the fundamentals of building REST APIs with Spring Boot, including database integration, layered architecture, and CRUD operations.

---link to video
https://uncg-my.sharepoint.com/:f:/g/personal/raothman_uncg_edu/IgDMiuwu_Z6jRa6ixOUMd-v-AbqP9FTDJTpxz6hSvMnkbwo?e=AjiXps
# Table of Contents

- What is This Project?
- Technology Stack
- Installation & Setup
- Running the Application
- Project Architecture
- API Endpoints
- Key Spring Boot Concepts
- Database Schema
- Testing the API
- Common Issues

---

# What is This Project?

This project is a **CRUD API** designed to manage characters from the anime Naruto Shippuden.

The API allows users to:

- Add new characters
- Retrieve character information
- Update character details
- Delete characters
- Search characters by name
- Filter characters by category (example: Sensei, Genin, Hokage)

CRUD stands for:

C – Create  
R – Read  
U – Update  
D – Delete  

The purpose of this project is to demonstrate how to build a complete backend API using Spring Boot and connect it to a relational database.

---

# Technology Stack

| Technology | Purpose |
|---|---|
| Java | Programming language |
| Spring Boot | Framework used to build the application |
| Spring Web | REST API functionality |
| Spring Data JPA | Simplifies database access |
| Hibernate | JPA implementation |
| PostgreSQL | Relational database |
| Maven | Dependency management and build tool |

---

# Installation & Setup

## Prerequisites

Before running the project, ensure you have the following installed:

Java JDK  
Git  
PostgreSQL database  
VS Code 

Verify Java installation:

```
java -version
```

---

---

# Install Dependencies

This project includes the Maven wrapper, so Maven does not need to be installed separately.

Windows:

```
mvnw.cmd clean install
```



# Database Configuration

Open the following file:

```
src/main/resources/application.properties
```

Add your PostgreSQL database configuration:

```
spring.application.name=naruto-api

spring.datasource.url=jdbc:postgresql://localhost:5432/naruto_db
spring.datasource.username=postgres
spring.datasource.password=yourpassword

spring.jpa.hibernate.ddl-auto=update

logging.level.org.hibernate.SQL=DEBUG
```

---

# Running the Application

Run using the Maven wrapper.

Windows:

```
mvnw.cmd spring-boot:run
```



The API will start at:

```
http://localhost:8080
```

---

# Project Architecture

## Folder Structure

```
src/main/java/com/example/characters/

├── CharacterApiApplication.java
├── CharacterController.java
├── CharacterService.java
├── CharacterRepository.java
└── Character.java

src/main/resources/
└── application.properties
```

---

# Layered Architecture

Client (Bruno)

↓

Controller Layer  
Handles HTTP requests and responses

↓

Service Layer  
Contains business logic

↓

Repository Layer  
Handles database operations

↓

PostgreSQL Database

This architecture provides:

- Separation of concerns
- Easier maintenance
- Better testing capability

---

# API Endpoints

Base URL

```
http://localhost:8080/characters
```

---

# Get All Characters

GET /characters

Returns a list of all characters.

Example response:

```
[
  {
    "id": 1,
    "name": "Naruto Uzumaki",
    "village": "Leaf",
    "category": "Genin"
  }
]
```

---

# Get Character by ID

GET /characters/{id}

Example:

```
GET /characters/1
```

Returns a specific character.

---

# Create Character

POST /characters

Example request body:

```
{
  "name": "Sasuke Uchiha",
  "village": "Leaf",
  "category": "Genin"
}
```

---

# Update Character

PUT /characters/{id}

Example:

```
PUT /characters/2
```

Example request body:

```
{
  "name": "Sasuke Uchiha",
  "village": "Leaf",
  "category": "Rogue Ninja"
}
```

---

# Delete Character

DELETE /characters/{id}

Example:

```
DELETE /characters/3
```

Deletes the specified character.

---

# Get Characters by Category

GET /characters/category/{category}

Example:

```
GET /characters/category/Sensei
```

Example response:

```
[
  {
    "id": 4,
    "name": "Jiraiya",
    "village": "Leaf",
    "category": "Sensei"
  }
]
```

---

# Search Characters by Name

GET /characters/search?name={substring}

Example:

```
GET /characters/search?name=nar
```

Example response:

```
[
  {
    "id": 1,
    "name": "Naruto Uzumaki"
  }
]
```

---

# Key Spring Boot Concepts

Controller

```
@RestController
@RequestMapping("/characters")
```

Handles incoming HTTP requests.

---

Service

```
@Service
```

Contains  logic.

---

Repository

```
public interface CharacterRepository extends JpaRepository<Character, Long>
```

Provides automatic CRUD methods.

---

Entity

```
@Entity
public class Character
```

Represents a table in the database.

---

# Database Schema

Characters Table

| Column | Type | Description |
|---|---|---|
| id | SERIAL | Primary Key |
| name | VARCHAR | Character name |
| village | VARCHAR | Character village |
| category | VARCHAR | Character category |

Example SQL:

```
CREATE TABLE characters (
 id SERIAL PRIMARY KEY,
 name VARCHAR(255),
 village VARCHAR(255),
 category VARCHAR(255)
);
```

Hibernate automatically generates this table when the application runs.

---

# Testing the API

You can test the API using:

  
Bruno  
    

Example curl request:

```
curl http://localhost:8080/characters
```

---

# Example Characters for Testing

You can add characters such as:

Naruto Uzumaki  
Sasuke Uchiha  
Sakura Haruno  
Jiraiya  
Kakashi Hatake  

---

# Common Issues

Port already in use

Change the port inside application.properties

```
server.port=8081
```

---

Database connection error

Check that:

- PostgreSQL is running
- The username and password are correct
- The JDBC URL is correct

---

# Resources

Spring Boot Documentation  
https://spring.io/projects/spring-boot

Spring Data JPA  
https://spring.io/projects/spring-data-jpa

REST API Best Practices  
https://restfulapi.net/

PostgreSQL Documentation  
https://www.postgresql.org/docs/
