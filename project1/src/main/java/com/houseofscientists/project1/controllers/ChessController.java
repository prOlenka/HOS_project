package com.houseofscientists.project1.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChessController {

    @GetMapping("/question_start/chess")
    public String chess(Model model) {
        String boardHtml = generateChessBoardHtml();
        model.addAttribute("boardHtml", boardHtml);
        return "chess"; // Имя HTML-шаблона
    }

    private String generateChessBoardHtml() {
        StringBuilder boardHtml = new StringBuilder();
        String[][] board = {
                {"♜", "♞", "♝", "♛", "♚", "♝", "♞", "♜"},
                {"♟", "♟", "♟", "♟", "♟", "♟", "♟", "♟"},
                {"", "", "", "", "", "", "", ""},
                {"", "", "", "", "", "", "", ""},
                {"", "", "", "", "", "", "", ""},
                {"", "", "", "", "", "", "", ""},
                {"♙", "♙", "♙", "♙", "♙", "♙", "♙", "♙"},
                {"♖", "♘", "♗", "♕", "♔", "♗", "♘", "♖"}
        };

        for (int row = 0; row < 8; row++) {
            for (int col = 0; col < 8; col++) {
                String piece = board[row][col];
                boolean isWhite = (row + col) % 2 == 0;
                String colorClass = isWhite ? "white" : "black";
                boardHtml.append("<div class='").append(colorClass).append("'>");
                if (!piece.isEmpty()) {
                    boardHtml.append("<span class='piece'>").append(piece).append("</span>");
                }
                boardHtml.append("</div>");
            }
        }
        return boardHtml.toString();
    }
}
