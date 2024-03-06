package com.houseofscientists.project1.repository;

import com.houseofscientists.project1.models.Questions;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.awt.print.Pageable;
import java.util.List;

@Repository
public interface QuestionsRepository extends JpaRepository<Questions, Long> {
        List<Questions> findAll();

//        public static Questions getRandomQuestion(){
//        Questions q = new Questions();
//        q.getQuestion();
//        return q;
//        }
}


//        Questions findByNameAndStateAllIgnoringCase(String answer1, String answer2);
