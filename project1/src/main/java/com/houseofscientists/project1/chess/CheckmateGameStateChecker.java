package com.houseofscientists.project1.chess;

import com.houseofscientists.project1.chess.piece.King;
import com.houseofscientists.project1.chess.piece.Piece;

import java.util.List;
import java.util.Set;

public class CheckmateGameStateChecker extends GameStateChecker{
    @Override
    public GameState check(Board board, Color color) {
        Piece king = board.getPiecesByColor(color).stream().filter(piece -> piece instanceof King).findFirst().get();

        if(!board.isSquareAttackedByColor(king.coordinates, color.opposite())){
            return GameState.ONGOING;
        }
        if(color == Color.WHITE){
            return GameState.CHECKMATE_TO_WHITE_KING;
        }else {
            return GameState.CHECKMATE_TO_BLACK_KING;
        }

    }
}
