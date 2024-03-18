package com.houseofscientists.project1.repository;

import com.houseofscientists.project1.models.Questions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionsRepository extends JpaRepository<Questions, Long> {
//        @Modifying
//        @Query("SELECT u FROM Questions u WHERE u.id= ?1")
//        List<Questions> findById(@Param("main") int main);

//        public static Questions getRandomQuestion(){
//        Questions q = new Questions();
//        q.getQuestion();
//        return q;
//        }
}


//        Questions findByNameAndStateAllIgnoringCase(String answer1, String answer2);
