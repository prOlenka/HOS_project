package com.houseofscientists.project1.chess;


import com.houseofscientists.project1.chess.piece.Piece;

import java.util.List;
import java.util.Set;

public class StalemateGameStateChecker extends GameStateChecker{

    @Override
    public GameState check(Board board, Color color) {
        Set<Piece> pieces = board.getPiecesByColor(color);
        for (Piece piece: pieces) {
            Set<Coordinates> availableMoveSquares = piece.getAvailableMoveSquares(board);

            if(availableMoveSquares.size() > 0){
                return GameState.ONGOING;
            }
        }
        return GameState.STALEMATE;
    }
}
