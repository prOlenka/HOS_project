package com.houseofscientists.project1.chess;

public class Move {
    public final Coordinates from, to;

    public Move(Coordinates from, Coordinates to) {
        this.from = from;
        this.to = to;
    }

    public Coordinates getFrom() {
        return from;
    }

    public Coordinates getTo() {
        return to;
    }
}
