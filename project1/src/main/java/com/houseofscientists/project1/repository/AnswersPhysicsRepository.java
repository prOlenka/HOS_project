package com.houseofscientists.project1.repository;

import com.houseofscientists.project1.models.AnswersPhysics;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AnswersPhysicsRepository extends JpaRepository<AnswersPhysics, Long> {

    List<AnswersPhysics> findAnswersPhysicsByIdQuestions(Long l);
}
