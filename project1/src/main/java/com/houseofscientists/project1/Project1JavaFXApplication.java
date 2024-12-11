package com.houseofscientists.project1;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.ConfigurableApplicationContext;

public class Project1JavaFXApplication extends Application {

	private ConfigurableApplicationContext applicationContext;

	@Override
	public void init() {
		String[] args = getParameters().getRaw().toArray(new String[0]);

		this.applicationContext = new SpringApplicationBuilder()
				.sources(SpringBootExampleApplication.class)
				.run(args);
	}

	@Override
	public void start(Stage primaryStage) {
		StackPane root = new StackPane();
		Scene scene = new Scene(root, 300, 250);
		primaryStage.setTitle("JavaFX Application");
		primaryStage.setScene(scene);
		primaryStage.show();
	}

	@Override
	public void stop() {
		this.applicationContext.close();
		Platform.exit();
	}
}
