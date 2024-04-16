package com.houseofscientists.project1.repository;

import com.houseofscientists.project1.models.QuestionsPhysics;
import com.houseofscientists.project1.models.Register;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigInteger;
import java.util.List;

public interface RegisterRepository extends JpaRepository<Register, BigInteger> {

        List<Register> findAllById(long l);

//        @Modifying
//        @Query("SELECT u FROM Register u WHERE u.id= ?1")
//        List<Register> findById(@Param("main") int main);
}
