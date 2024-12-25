package com.houseofscientists.project1.chess.piece;

import com.houseofscientists.project1.chess.Color;
import com.houseofscientists.project1.chess.Coordinates;
import com.houseofscientists.project1.chess.CoordinatesShift;

import java.util.Set;

public class Bishop extends LongRangePiece implements IBishop {
    public Bishop(Color color, Coordinates coordinates) {
        super(color, coordinates);
    }

    @Override
    protected Set<CoordinatesShift> getPieceMoves() {
       return getBishopMoves();
    }

}
