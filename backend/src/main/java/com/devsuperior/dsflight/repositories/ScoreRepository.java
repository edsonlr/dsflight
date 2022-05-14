package com.devsuperior.dsflight.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devsuperior.dsflight.entities.Score;
import com.devsuperior.dsflight.entities.ScorePK;

public interface ScoreRepository extends JpaRepository<Score, ScorePK> {
	

}
