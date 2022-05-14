package com.devsuperior.dsflight.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devsuperior.dsflight.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {
	
	User findByEmail(String email);
	
}
