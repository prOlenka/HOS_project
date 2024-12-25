package com.houseofscientists.project1.chess.piece;

import com.houseofscientists.project1.chess.Color;
import com.houseofscientists.project1.chess.Coordinates;
import com.houseofscientists.project1.chess.CoordinatesShift;

import java.util.Set;

public class Queen extends LongRangePiece implements IRook,IBishop {
    public Queen(Color color, Coordinates coordinates) {
        super(color, coordinates);
    }

    @Override
    protected Set<CoordinatesShift> getPieceMoves() {
        Set<CoordinatesShift> result = getBishopMoves();
        result.addAll(getRookMoves());

        return result;
    }
}
