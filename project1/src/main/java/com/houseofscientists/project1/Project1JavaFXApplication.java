package com.houseofscientists.project1;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.scene.web.WebView;
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
		WebView webView = new WebView();

		// Интеграция с Spring: динамическая загрузка страницы
		webView.getEngine().load("http://localhost:8080/start");

		StackPane root = new StackPane(webView);
		Scene scene = new Scene(root, 800, 600);

		// Подключение CSS файлов
		scene.getStylesheets().add(getClass().getResource("/css/style.css").toExternalForm());
		// Подключение всех нужных CSS файлов
		scene.getStylesheets().add(getClass().getResource("/css/grid.css").toExternalForm());
		scene.getStylesheets().add(getClass().getResource("/css/question_start.css").toExternalForm());
		scene.getStylesheets().add(getClass().getResource("/css/slydersstyles.css").toExternalForm());
		scene.getStylesheets().add(getClass().getResource("/css/start_page.css").toExternalForm());
		scene.getStylesheets().add(getClass().getResource("/css/style.css").toExternalForm());
		scene.getStylesheets().add(getClass().getResource("/css/styles.css").toExternalForm());
		primaryStage.setTitle("JavaFX and Spring Integration");
		primaryStage.setScene(scene);
		primaryStage.show();
	}

	@Override
	public void stop() {
		this.applicationContext.close();
		Platform.exit();
	}
}
