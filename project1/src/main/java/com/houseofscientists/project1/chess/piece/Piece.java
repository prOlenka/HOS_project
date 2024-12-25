package com.houseofscientists.project1.chess.piece;

import com.houseofscientists.project1.chess.Board;
import com.houseofscientists.project1.chess.Color;
import com.houseofscientists.project1.chess.Coordinates;
import com.houseofscientists.project1.chess.CoordinatesShift;

import java.util.HashSet;
import java.util.Set;

abstract public class Piece {
    public final Color color;
    public Coordinates coordinates;

    public Piece(Color color, Coordinates coordinates) {
        this.color = color;
        this.coordinates = coordinates;
    }

    public Set<Coordinates> getAvailableMoveSquares(Board board){
        Set<Coordinates> result = new HashSet<>();

        for(CoordinatesShift shift : getPieceMoves()){
            if(coordinates.canShift(shift)){
                Coordinates newCoordinates = coordinates.shift(shift);

                if(isSquareAvailableForMove(newCoordinates, board)){
                    result.add(newCoordinates);
                }
            }
        }
        return result;
    }

    protected boolean isSquareAvailableForMove(Coordinates coordinates, Board board) {
        return board.isSquareEmpty(coordinates) || board.getPiece(coordinates).color != color;
    }

    protected abstract Set<CoordinatesShift> getPieceMoves();

    protected Set<CoordinatesShift> getPieceAttacks() {
        return getPieceMoves();
    }


    public Set<Coordinates> getAttackedSquares(Board board) {
        Set<CoordinatesShift> pieceAttacks = getPieceAttacks();
        Set<Coordinates> result = new HashSet<>();

        for (CoordinatesShift pieceAttack: pieceAttacks) {
            if(coordinates.canShift(pieceAttack)){
                Coordinates shiftedCoordinates = coordinates.shift(pieceAttack);

                if(isSquareAvailableForAttacked(shiftedCoordinates, board)){
                    result.add(shiftedCoordinates);
                }
            }
        }
        return result;
    }


    protected boolean isSquareAvailableForAttacked(Coordinates shiftedCoordinates, Board board) {
        return true;
    }

}
