package com.houseofscientists.project1.repository;

import com.houseofscientists.project1.models.QuestionsStar;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionsStarRepository extends JpaRepository<QuestionsStar, Long> {

        @Modifying
        @Query("SELECT u FROM QuestionsBiology u WHERE u.id= ?1")
        List<QuestionsStar> findById(@Param("main") int main);

        List <QuestionsStar> findTopByOrderByIdDesc();

}

