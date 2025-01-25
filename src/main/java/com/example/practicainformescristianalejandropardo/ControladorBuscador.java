package com.example.practicainformescristianalejandropardo;

import javafx.application.Application;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.ComboBox;
import javafx.stage.Stage;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.HashMap;
import java.util.Map;

public class ControladorBuscador  {

    @FXML
    ComboBox<String> equipos;
    @FXML
    ComboBox<String> posicion;

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

        posicion.getItems().add("Portero");
        posicion.getItems().add("Defensa");
        posicion.getItems().add("Centrocampista");
        posicion.getItems().add("Delantero");
    }


    public void generar(){
        try {
            // Conexión a la base de datos
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/laliga", "root", "");

            // Equipo seleccionado
            String equipoSeleccionado = (String) equipos.getSelectionModel().getSelectedItem();
            String p = (String) posicion.getSelectionModel().getSelectedItem();

            if(equipoSeleccionado == null || equipoSeleccionado.equals("") ){
                mostrarError("Debe elegir un equipo");
            }
            if(p == null || p.equals("") ){
                mostrarError("Debe elegir una posicion");
            }

            // Parámetros del informe
            Map<String, Object> parametros = new HashMap<>();
            parametros.put("NombreEq", equipoSeleccionado);
            parametros.put("LogoPath", getClass().getResource("/imagenes/Logo.png").toString());
            parametros.put("Posicion", p);

            // Cargar el archivo .jasper desde el classpath
            InputStream jasperStream = getClass().getResourceAsStream("/jasper/JugadoresPosicion.jasper");


            // Llenar el informe
            JasperPrint print = JasperFillManager.fillReport(jasperStream, parametros, conexion);

            // Ruta del PDF en la carpeta /jasper
            String outputPath = getClass().getResource("/jasper").getPath() + "/JugadoresPosicion.pdf";

            // Exportar el informe a PDF
            JasperExportManager.exportReportToPdfFile(print, outputPath);


        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error al generar el informe: " + e.getMessage());
        }
    }

    private void mostrarError(String mensaje) {
        Alert alert = new Alert(Alert.AlertType.ERROR);
        alert.setTitle("Error");
        alert.setContentText(mensaje);
        alert.showAndWait();
    }

}
