package com.example.practicainformescristianalejandropardo;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TextField;
import javafx.stage.Modality;
import javafx.stage.Stage;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class ControladorPrincipal {
    @FXML
    private TextField nombre;
    @FXML
    private ComboBox equipos;

    @FXML
    public void initialize() {
        equipos.getItems().add("");
        equipos.getItems().add("FC Barcelona");
        equipos.getItems().add("Real Madrid");
        equipos.getItems().add("Atletico de Madrid");
        equipos.getItems().add("Sevilla FC");
        equipos.getItems().add("Real Betis");
        equipos.getItems().add("Real Sociedad");
        equipos.getItems().add("Villarreal CF");
        equipos.getItems().add("Valencia CF");
        equipos.getItems().add("CA Osasuna");
        equipos.getItems().add("RCD Mallorca");
        equipos.getItems().add("Rayo Vallecano");
        equipos.getItems().add("Getafe CF");
        equipos.getItems().add("Cadiz CF");
        equipos.getItems().add("RC Celta de Vigo");
        equipos.getItems().add("UD Almeria");
        equipos.getItems().add("Granada CF");
        equipos.getItems().add("Real Valladolid CF");
        equipos.getItems().add("UD Las Palmas");
        equipos.getItems().add("Girona FC");

    }

    public void maximoAsistente(){
        try {
            // Conexión a la base de datos
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/laliga", "root", "");

            // Equipo seleccionado
            String equipoSeleccionado = (String) equipos.getSelectionModel().getSelectedItem();
            if (equipoSeleccionado == null || equipoSeleccionado.isEmpty()){
                maximoAsistenciasLiga();
                return;
            }


            // Parámetros del informe
            Map<String, Object> parametros = new HashMap<>();
            parametros.put("NombreEq", equipoSeleccionado);
            parametros.put("LogoPath", getClass().getResource("/imagenes/Logo.png").toString());

            // Cargar el archivo .jasper desde el classpath
            InputStream jasperStream = getClass().getResourceAsStream("/jasper/MaxAsistentes.jasper");


            // Llenar el informe
            JasperPrint print = JasperFillManager.fillReport(jasperStream, parametros, conexion);

            // Ruta del PDF en la carpeta /jasper
            String outputPath = getClass().getResource("/jasper").getPath() + "/MaxAsistentes.pdf";

            // Exportar el informe a PDF
            JasperExportManager.exportReportToPdfFile(print, outputPath);


        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error al generar el informe: " + e.getMessage());
        }
    }

    public void maximoGoleador() {
        try {
            // Conexión a la base de datos
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/laliga", "root", "");

            // Equipo seleccionado
            String equipoSeleccionado = (String) equipos.getSelectionModel().getSelectedItem();
            if (equipoSeleccionado == null || equipoSeleccionado.isEmpty()) {
                maximoGoleadorLiga();
                return;
            }



            // Parámetros del informe
            Map<String, Object> parametros = new HashMap<>();
            parametros.put("NombreEq", equipoSeleccionado);
            parametros.put("LogoPath", getClass().getResource("/imagenes/Logo.png").toString());

            // Cargar el archivo .jasper desde el classpath
            InputStream jasperStream = getClass().getResourceAsStream("/jasper/MaxGoleadores.jasper");


            // Llenar el informe
            JasperPrint print = JasperFillManager.fillReport(jasperStream, parametros, conexion);

            // Ruta del PDF en la carpeta /jasper
            String outputPath = getClass().getResource("/jasper").getPath() + "/MaxGoleadores.pdf";

            // Exportar el informe a PDF
            JasperExportManager.exportReportToPdfFile(print, outputPath);



        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error al generar el informe: " + e.getMessage());
        }
    }





    public void maximoGoleadorLiga(){
        try {
            // Conexión a la base de datos
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/laliga", "root", "");

            // Equipo seleccionado
            String equipoSeleccionado = (String) equipos.getSelectionModel().getSelectedItem();


            // Parámetros del informe
            Map<String, Object> parametros = new HashMap<>();
            parametros.put("NombreEq", equipoSeleccionado);
            parametros.put("LogoPath", getClass().getResource("/imagenes/Logo.png").toString());

            // Cargar el archivo .jasper desde el classpath
            InputStream jasperStream = getClass().getResourceAsStream("/jasper/MaxGolLiga.jasper");


            // Llenar el informe
            JasperPrint print = JasperFillManager.fillReport(jasperStream, parametros, conexion);

            // Ruta del PDF en la carpeta /jasper
            String outputPath = getClass().getResource("/jasper").getPath() + "/MaxGolLiga.pdf";

            // Exportar el informe a PDF
            JasperExportManager.exportReportToPdfFile(print, outputPath);



        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error al generar el informe: " + e.getMessage());
        }
    }

    public void maximoAsistenciasLiga(){
        try {
            // Conexión a la base de datos
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/laliga", "root", "");

            // Equipo seleccionado
            String equipoSeleccionado = (String) equipos.getSelectionModel().getSelectedItem();


            // Parámetros del informe
            Map<String, Object> parametros = new HashMap<>();
            parametros.put("NombreEq", equipoSeleccionado);
            parametros.put("LogoPath", getClass().getResource("/imagenes/Logo.png").toString());

            // Cargar el archivo .jasper desde el classpath
            InputStream jasperStream = getClass().getResourceAsStream("/jasper/MaxAsistenciasLiga.jasper");


            // Llenar el informe
            JasperPrint print = JasperFillManager.fillReport(jasperStream, parametros, conexion);

            // Ruta del PDF en la carpeta /jasper
            String outputPath = getClass().getResource("/jasper").getPath() + "/MaxAsistenciasLiga.pdf";

            // Exportar el informe a PDF
            JasperExportManager.exportReportToPdfFile(print, outputPath);



        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error al generar el informe: " + e.getMessage());
        }

    }

    public void abrirBuscador(){
        FXMLLoader loader = new FXMLLoader(getClass().getResource("Buscador.fxml"));
        try {
            // Cargar la escena buscador
            Parent root = loader.load();

            // Configurar y mostrar la ventana
            Scene escena = new Scene(root, 448, 462);
            Stage stage = new Stage();
            stage.initModality(Modality.APPLICATION_MODAL);
            stage.setScene(escena);
            stage.setTitle("Buscador");
            stage.show();
        } catch (IOException e) {
            throw new RuntimeException("Error al cargar la ventana de usuario: " + e.getMessage(), e);
        }
    }


}