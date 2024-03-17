package com.houseofscientists.project1.repository;

import com.houseofscientists.project1.models.Answers;
import com.houseofscientists.project1.models.Questions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import java.util.ArrayList;
import java.util.List;

public interface AnswersRepository extends JpaRepository<Answers, Long> {
    @Modifying
    @Query("SELECT u FROM Answers u WHERE u.id_questions= ?1")
    List<Questions> findAllByIdQuestions(@Param("main") int main);

    
//    public static @NotNull ArrayList<Answers> findAnswersById_questionsContains(Long id){
//        ArrayList<Answers> answers = new ArrayList<>();
//        for (Long i = id; i < id-4; i++) {
//                answers.add(answers.get(1));
//        }
//        return answers;
//    }
}
