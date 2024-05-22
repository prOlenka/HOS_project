package com.houseofscientists.project1.repository;

import com.houseofscientists.project1.models.AnswersMath;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AnswersMathRepository extends JpaRepository<AnswersMath, Long> {

    List<AnswersMath> findAnswersMathByIdQuestions(Long idQuestions);


}
