package com.houseofscientists.project1.chess.piece;


import com.houseofscientists.project1.chess.Color;
import com.houseofscientists.project1.chess.Coordinates;
import com.houseofscientists.project1.chess.CoordinatesShift;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class Knight extends Piece {

    public Knight(Color color, Coordinates coordinates) {
        super(color, coordinates);
    }

    @Override
    protected Set<CoordinatesShift> getPieceMoves() {
        return new HashSet<>(Arrays.asList(
                new CoordinatesShift(1, 2),
                new CoordinatesShift(2, 1),
                new CoordinatesShift(2, -1),
                new CoordinatesShift(-1, 2),
                new CoordinatesShift(-1, -2),
                new CoordinatesShift(-2, 1),
                new CoordinatesShift(-2, -1),
                new CoordinatesShift(1, -2)
        ));
    }
}
