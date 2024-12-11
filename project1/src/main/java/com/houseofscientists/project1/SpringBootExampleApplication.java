package com.houseofscientists.project1;

import javafx.application.Application;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class SpringBootExampleApplication {

    public static void main(String[] args) {

        Application.launch(Project1JavaFXApplication.class, args);
    }
}
