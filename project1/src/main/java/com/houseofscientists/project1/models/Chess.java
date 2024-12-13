package com.houseofscientists.project1.models;

import lombok.Getter;

public class Chess {
    private final int BOARD_SIZE = 8; // Размер доски 8x8
    @Getter
    private String[][] board; // Двумерный массив для хранения положения фигур

    public Chess() {
        board = new String[BOARD_SIZE][BOARD_SIZE];
        initializeBoard();
    }

    // Инициализация доски с начальными позициями фигур
    private void initializeBoard() {
        // Установка фигур для белых и черных (короткое представление)
        board[0] = new String[]{"R", "N", "B", "Q", "K", "B", "N", "R"}; // Черные
        board[1] = new String[]{"P", "P", "P", "P", "P", "P", "P", "P"}; // Пешки черных
        for (int i = 2; i < 6; i++) {
            for (int j = 0; j < BOARD_SIZE; j++) {
                board[i][j] = ""; // Пустые клетки
            }
        }
        board[6] = new String[]{"P", "P", "P", "P", "P", "P", "P", "P"}; // Пешки белых
        board[7] = new String[]{"R", "N", "B", "Q", "K", "B", "N", "R"}; // Белые
    }

    // Метод для отображения доски в консоли (опционально)
    public void printBoard() {
        for (String[] row : board) {
            for (String cell : row) {
                System.out.print((cell.isEmpty() ? "." : cell) + " ");
            }
            System.out.println();
        }
    }
}

