package com.houseofscientists.project1.repository;

import com.houseofscientists.project1.models.AnswersStar;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AnswersStarRepository extends JpaRepository<AnswersStar, Long> {

    List<AnswersStar> findAnswersStarByIdQuestions(Long idQuestions);


}
