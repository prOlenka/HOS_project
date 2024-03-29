package com.houseofscientists.project1.repository;

import com.houseofscientists.project1.models.Register;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface RegisterRepository extends JpaRepository<Register, Long> {
        List<Register> findAllById(Long id);

}
