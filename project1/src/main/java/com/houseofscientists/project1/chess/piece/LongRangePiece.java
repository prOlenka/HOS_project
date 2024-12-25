package com.houseofscientists.project1.chess.piece;

import com.houseofscientists.project1.chess.Board;
import com.houseofscientists.project1.chess.BoardUtils;
import com.houseofscientists.project1.chess.Color;
import com.houseofscientists.project1.chess.Coordinates;

import java.util.List;
import java.util.Objects;

public abstract class LongRangePiece extends Piece {

    public LongRangePiece(Color color, Coordinates coordinates) {
        super(color, coordinates);
    }

    @Override
    protected boolean isSquareAvailableForMove(Coordinates coordinates, Board board) {
        boolean result = super.isSquareAvailableForMove(coordinates, board);

        if (result) {
            return isSquareAvailableForAttacked(coordinates, board);
        } else {
            return false;
        }
    }

    @Override
    protected boolean isSquareAvailableForAttacked(Coordinates coordinates, Board board) {
        List<Coordinates> coordinatesBetween;
        if (this.coordinates.file == coordinates.file) {
            coordinatesBetween = BoardUtils.getVerticalCoordinatesBetween(this.coordinates, coordinates);
        } else if (Objects.equals(coordinates.rank, this.coordinates.rank)) {
            coordinatesBetween = BoardUtils.getHorizontalCoordinatesBetween(this.coordinates, coordinates);
        } else {
            coordinatesBetween = BoardUtils.getDiagonalsCoordinatesBetween(this.coordinates, coordinates);
        }

        for (Coordinates c : coordinatesBetween) {
            if (!board.isSquareEmpty(c)) {
                return false;
            }
        }
        return true;
    }
}
