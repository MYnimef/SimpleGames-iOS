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
    
    func setFillCell(fillCell: @escaping (_ cellNum: Int, _ content: String) -> ()) {
        self.fillCell = fillCell
        if computerItem == .cellX {
            computerAction()
        }
    }
    
    func playerClicked(cellNum: Int) {
        if cells[cellNum] == .cellEmpty {
            fillCell(cellNum, playerItem.rawValue)

            cells[cellNum] = playerItem
            filledCellsCount += 1
            
            if (filledCellsCount < 9) {
                computerAction()
            }
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
}
