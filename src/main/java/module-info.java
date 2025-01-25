module com.example.practicainformescristianalejandropardo {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;
    requires net.sf.jasperreports.core;
    requires java.desktop;


    opens com.example.practicainformescristianalejandropardo to javafx.fxml;
    exports com.example.practicainformescristianalejandropardo;
}