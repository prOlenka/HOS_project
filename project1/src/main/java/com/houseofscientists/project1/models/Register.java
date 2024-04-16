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
@Table(name = "register")
public class Register {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY) //колонка генерируется на сотороне Postgres, Hibernate её не трогает
    private Long id;

    @Column(name = "description")
    private String description;
    @Column(name = "picture")
    private String picture;
    @Column(name = "title")
    private String title;

}
