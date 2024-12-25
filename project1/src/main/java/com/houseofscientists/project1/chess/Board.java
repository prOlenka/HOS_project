package com.houseofscientists.project1.chess;

import com.houseofscientists.project1.chess.piece.Piece;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

public class Board {
    private final Map<Coordinates, Piece> board = new HashMap<>();

    public Board() {
        // Инициализация пустой доски (можно будет добавить фигуры при старте игры)
        for (File file : File.values()) {
            for (int rank = 1; rank <= 8; rank++) {
                board.put(new Coordinates(file, rank), null); // Каждая клетка на доске пуста
            }
        }
    }

    public Piece getPiece(Coordinates coordinates) {
        return board.get(coordinates);
    }

    public boolean isSquareEmpty(Coordinates coordinates) {
        return getPiece(coordinates) == null;
    }

    public Set<Piece> getPiecesByColor(Color color) {
        return board.values().stream()
                .filter(piece -> piece != null && piece.color == color)
                .collect(Collectors.toSet());
    }

    public boolean isSquareAttackedByColor(Coordinates coordinates, Color color) {
        for (Piece piece : getPiecesByColor(color)) {
            if (piece.getAttackedSquares(this).contains(coordinates)) {
                return true;
            }
        }
        return false;
    }

    public void makeMove(Move move) {
        Piece piece = getPiece(move.getFrom());
        Coordinates destination = move.getTo();
        if (piece != null && piece.getAvailableMoveSquares(this).contains(destination)) {
            board.put(destination, piece);
            board.put(move.getFrom(), null);
            piece.coordinates = destination; // Обновляем координаты фигуры
        } else {
            throw new IllegalArgumentException("Invalid move");
        }
    }

    public void placePiece(Piece piece) {
        board.put(piece.coordinates, piece);
    }

    public List<Piece> getAllPieces() {
        return board.values().stream()
                .filter(piece -> piece != null)
                .collect(Collectors.toList());
    }
}
