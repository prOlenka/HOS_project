package com.houseofscientists.project1.repository;

import com.houseofscientists.project1.models.QuestionsGeography;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionsGeographyRepository extends JpaRepository<QuestionsGeography, Long> {
        @Modifying
        @Query("SELECT u FROM QuestionsGeography u WHERE u.id= ?1")
        List<QuestionsGeography> findById(@Param("main") int main);
}
