package com.houseofscientists.project1.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.*;

@Entity
@Data
@NoArgsConstructor
public class Astronomy {
    @Setter
    @Getter
    @Id
    private Integer id;
    private String question;
    private String explanation;
    private String rightAnswer;
    private String s1;
    private String s2;
    private String s3;


    public Astronomy(Integer id, String question, String explanation, String rightAnswer, String s1, String s2, String s3) {
        this.id = id;
        this.question = question;
        this.explanation = explanation;
        this.rightAnswer = rightAnswer;
        this.s1 = s1;
        this.s2 = s2;
        this.s3 = s3;
    }
}
