package com.houseofscientists.project1.repository;

import com.houseofscientists.project1.models.AnswersGeography;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AnswersGeographyRepository extends JpaRepository<AnswersGeography, Long> {

    List<AnswersGeography> findByIdQuestions(Long idQuestions);
}
