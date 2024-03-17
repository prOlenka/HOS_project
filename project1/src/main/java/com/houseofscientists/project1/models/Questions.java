package com.houseofscientists.project1.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

@Entity
@Getter
@Setter
@DynamicUpdate
@DynamicInsert
@Table(name = "Questions")
public class Questions {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)//колонка генерируется на сотороне Postgres, Hibernate её не трогает
    private int id;

    @Column(name = "question")
    private String question;
    @Column(name = "explanation")
    private String explanation;

//    private byte [] image;

}
