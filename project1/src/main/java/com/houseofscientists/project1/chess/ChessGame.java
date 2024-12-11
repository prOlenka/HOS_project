package com.houseofscientists.project1.chess;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.GridPane;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Text;
import javafx.scene.input.MouseEvent;
import javafx.stage.Stage;

public class ChessGame extends Application {

    private static final int TILE_SIZE = 80;
    private static final int BOARD_SIZE = 8;
    private Text selectedPiece = null;

    @Override
    public void start(Stage primaryStage) {
        GridPane chessBoard = new GridPane();

        for (int row = 0; row < BOARD_SIZE; row++) {
            for (int col = 0; col < BOARD_SIZE; col++) {
                Rectangle tile = new Rectangle(TILE_SIZE, TILE_SIZE);
                tile.setFill((row + col) % 2 == 0 ? Color.BEIGE : Color.BROWN);
                int finalRow = row;
                int finalCol = col;
                tile.setOnMouseClicked(event -> handleTileClick(finalRow, finalCol));
                chessBoard.add(tile, col, row);

                if (row == 1 || row == 6) {
                    Text piece = new Text(row == 1 ? "P" : "p");
                    piece.setStyle("-fx-font-size: 30px; -fx-font-weight: bold;");
                    piece.setOnMouseClicked(this::handlePieceClick);
                    chessBoard.add(piece, col, row);
                }
            }
        }

        Scene scene = new Scene(chessBoard, TILE_SIZE * BOARD_SIZE, TILE_SIZE * BOARD_SIZE);
        primaryStage.setTitle("Chess Game");
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    private void handlePieceClick(MouseEvent event) {
        if (selectedPiece == null) {
            selectedPiece = (Text) event.getSource();
            int selectedRow = -1;
            GridPane.setRowIndex(selectedPiece, selectedRow);
            int selectedCol = -1;
            GridPane.setColumnIndex(selectedPiece, selectedCol);
        }
    }

    private void handleTileClick(int row, int col) {
        if (selectedPiece != null) {
            GridPane.setRowIndex(selectedPiece, row);
            GridPane.setColumnIndex(selectedPiece, col);
            selectedPiece = null;
        }
    }

    public static void main(String[] args) {
        launch(args);
    }
}

