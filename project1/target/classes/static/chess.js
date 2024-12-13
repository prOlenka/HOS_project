// chess.js

// Массив для представления состояния доски (получить с сервера или из Java)
const chessBoard = [
    ["R", "N", "B", "Q", "K", "B", "N", "R"], // Черные фигуры
    ["P", "P", "P", "P", "P", "P", "P", "P"], // Черные пешки
    ["", "", "", "", "", "", "", ""],         // Пустые клетки
    ["", "", "", "", "", "", "", ""],
    ["", "", "", "", "", "", "", ""],
    ["", "", "", "", "", "", "", ""],
    ["P", "P", "P", "P", "P", "P", "P", "P"], // Белые пешки
    ["R", "N", "B", "Q", "K", "B", "N", "R"], // Белые фигуры
];

// Символы для шахматных фигур (используем Unicode)
const pieceSymbols = {
    "K": "♔",
    "Q": "♕",
    "R": "♖",
    "B": "♗",
    "N": "♘",
    "P": "♙",
    "k": "♚",
    "q": "♛",
    "r": "♜",
    "b": "♝",
    "n": "♞",
    "p": "♟",
};

// Функция для генерации шахматной доски
function renderChessBoard(board) {
    const boardContainer = document.querySelector(".chess-board");
    boardContainer.innerHTML = ""; // Очистить доску перед рендерингом

    for (let i = 0; i < board.length; i++) {
        for (let j = 0; j < board[i].length; j++) {
            const cell = document.createElement("div");
            cell.className = (i + j) % 2 === 0 ? "cell white" : "cell black"; // Черные и белые клетки

            // Добавляем фигуру, если она есть
            if (board[i][j]) {
                const piece = document.createElement("span");
                piece.textContent = pieceSymbols[board[i][j]] || board[i][j];
                piece.className = "chess-piece";
                cell.appendChild(piece);
            }

            boardContainer.appendChild(cell);
        }
    }
}

// Инициализация доски
document.addEventListener("DOMContentLoaded", () => {
    renderChessBoard(chessBoard);
});
