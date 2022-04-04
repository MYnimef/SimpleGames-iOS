//
//  TTTModel.swift
//  SimpleGames
//
//  Created by Ivan Markov on 04.04.2022.
//

final class TTTModel {
    
    private var cells: [TTT] = [TTT](repeating: .cellEmpty, count: 9)
    private var filledCellsCount: Int = 0
    
    private var fillCell: ((_ cellNum: Int, _ content: String) -> ())!
    private var showResult: ((_ content: String) -> ())!
    
    private let playerItem: TTT
    private let computerItem: TTT
    
    init(
        playerItem: TTT
    ) {
        self.playerItem = playerItem
        if playerItem == .cellX {
            self.computerItem = .cell0
        } else {
            self.computerItem = .cellX
        }
    }
    
    func setActions(
        fillCell: @escaping (_ cellNum: Int, _ content: String) -> (),
        showResult: @escaping (_ content: String) -> ()
    ) {
        self.fillCell = fillCell
        if computerItem == .cellX {
            computerAction()
        }
        
        self.showResult = showResult
    }
    
    func playerClicked(cellNum: Int) {
        if cells[cellNum] == .cellEmpty {
            fillCell(cellNum, playerItem.rawValue)

            cells[cellNum] = playerItem
            filledCellsCount += 1
            
            if (filledCellsCount < 9) {
                computerAction()
            }
            
            checkForGameResult()
        }
    }
    
    private func computerAction() {
        let buttonNum = Int.random(in: 0..<9)
        if cells[buttonNum] == .cellEmpty {
            fillCell(buttonNum, computerItem.rawValue)
            
            cells[buttonNum] = computerItem
            filledCellsCount += 1
        } else {
            computerAction()
        }
    }
    
    private func checkForGameResult() {
        if !(
            eq(cells[0], cells[1], cells[2]) ||
            eq(cells[3], cells[4], cells[5]) ||
            eq(cells[6], cells[7], cells[8]) ||
            eq(cells[0], cells[4], cells[8]) ||
            eq(cells[2], cells[4], cells[6]) ||
            eq(cells[1], cells[4], cells[7])
        ) && filledCellsCount == 9 {
            showResult(GameResult.NoOne.rawValue)
        }
    }
    
    private func eq(_ cell1: TTT, _ cell2: TTT, _ cell3: TTT) -> Bool {
        let res = cell1 == cell2 && cell2 == cell3 && cell1 != .cellEmpty
        
        if res {
            showResult(cell1 == playerItem ? GameResult.Human.rawValue : GameResult.Computer.rawValue)
        }
        
        return res
    }
}
