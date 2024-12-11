package com.houseofscientists.project1.models;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;


@Entity
@Data
@NoArgsConstructor
public class Math {
    @Id
    @Getter
    @Setter
    private Integer id;
    private String question;
    private String explanation;
    private String rightAnswer;
    private String s;
    private String s1;
    private String s2;
    private String s3;



    public Math(Integer id, String question, String explanation, String rightAnswer, String s, String s1, String s2, String s3) {
        this.id = id;
        this.question = question;
        this.explanation = explanation;
        this.rightAnswer = rightAnswer;
        this.s = s;
        this.s1 = s1;
        this.s2 = s2;
        this.s3 = s3;
    }
}
