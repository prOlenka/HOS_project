package com.houseofscientists.project1.repository;

import com.houseofscientists.project1.models.AnswersBiology;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AnswersBiologyRepository extends JpaRepository<AnswersBiology, Long> {

    List<AnswersBiology> findAnswersBiologyByIdQuestions(Long idQuestions);
}
