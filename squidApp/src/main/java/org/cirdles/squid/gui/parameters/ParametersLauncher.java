/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cirdles.squid.gui.parameters;

import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;
import javafx.stage.Window;
import javafx.stage.WindowEvent;

import static org.cirdles.squid.gui.SquidUI.SQUID_LOGO_SANS_TEXT_URL;

/**
 * @author ryanb
 */
public class ParametersLauncher {

    public static Stage squidLabDataStage;
    private static Stage primaryStage;
    public static Window squidLabDataWindow;

    public ParametersLauncher(Stage primaryStage) {
        this.primaryStage = primaryStage;
        squidLabDataStage = new Stage();
        squidLabDataStage.setMinHeight(600);
        squidLabDataStage.setMinWidth(900);
        squidLabDataStage.getIcons().add(new Image(SQUID_LOGO_SANS_TEXT_URL));
        squidLabDataStage.setTitle("Squid3 Parameters Manager");

        squidLabDataStage.setOnCloseRequest((WindowEvent e) -> {
            squidLabDataStage.hide();
            squidLabDataStage.setScene(null);
            e.consume();
        });
    }

    public void launchParametersManager(ParametersTab tab) {
        ParametersManagerGUIController.chosenTab = tab;
        if (!squidLabDataStage.isShowing()) {
            try {
                FXMLLoader loader = new FXMLLoader(getClass().getResource("SquidParametersManagerGUI.fxml"));
                Scene scene = new Scene(loader.load());
                squidLabDataStage.setScene(scene);
            } catch (Exception e) {
                e.printStackTrace();
            }
            squidLabDataWindow = squidLabDataStage.getScene().getWindow();

            squidLabDataStage.show();

        }
        squidLabDataStage.setX(primaryStage.getX() + (primaryStage.getWidth() - squidLabDataStage.getWidth()) / 2);
        squidLabDataStage.setY(primaryStage.getY() + (primaryStage.getHeight() - squidLabDataStage.getHeight()) / 2);
        squidLabDataStage.requestFocus();
    }

    public enum ParametersTab {
        physConst, refMat, commonPb, defaultModels
    }

}
