package com.example.practicainformescristianalejandropardo;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class HelloApplication extends Application {
    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(HelloApplication.class.getResource("VistaPrincipal.fxml"));
        Scene scene = new Scene(fxmlLoader.load(), 448, 462);
        stage.setResizable(false);
        stage.setFullScreen(false);
        stage.setTitle("LaLiga");
        stage.setScene(scene);
        stage.show();
    }

    public static void main(String[] args) {
        launch();
    }
}