//
//  TTTGameViewController.swift
//  SimpleGames
//
//  Created by Ivan Markov on 04.04.2022.
//

import UIKit


final class TTTGameViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    var playerItem: TTT?
    var computerItem: TTT?
    
    var buttonsContext: [TTT] = [TTT](repeating: .cellEmpty, count: 9)
    var buttons: [UIButton]?
    var openedButtonsCount: Int = 0
    
    func setPlayerItem(item: TTT) {
        playerItem = item
        if item == .cellX {
            computerItem = .cell0
        } else {
            computerItem = .cellX
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttons = [
            button1,
            button2,
            button3,
            button4,
            button5,
            button6,
            button7,
            button8,
            button9
        ]

        // Do any additional setup after loading the view.
    }

    @IBAction func clickButton1() {
        if buttonsContext[0] == .cellEmpty {
            openButtonPlayer(button: button1)
            buttonsContext[0] = playerItem!
            openButtonComputer()
        }
    }
    
    @IBAction func clickButton2() {
        if buttonsContext[1] == .cellEmpty {
            openButtonPlayer(button: button2)
            buttonsContext[1] = playerItem!
            openButtonComputer()
        }
    }
    
    @IBAction func clickButton3() {
        if buttonsContext[2] == .cellEmpty {
            openButtonPlayer(button: button3)
            buttonsContext[2] = playerItem!
            openButtonComputer()
        }
    }
    
    @IBAction func clickButton4() {
        if buttonsContext[3] == .cellEmpty {
            openButtonPlayer(button: button4)
            buttonsContext[3] = playerItem!
            openButtonComputer()
        }
    }
    
    @IBAction func clickButton5() {
        if buttonsContext[4] == .cellEmpty {
            openButtonPlayer(button: button5)
            buttonsContext[4] = playerItem!
            openButtonComputer()
        }
    }
    
    @IBAction func clickButton6() {
        if buttonsContext[5] == .cellEmpty {
            openButtonPlayer(button: button6)
            buttonsContext[5] = playerItem!
            openButtonComputer()
        }
    }
    
    @IBAction func clickButton7() {
        if buttonsContext[6] == .cellEmpty {
            openButtonPlayer(button: button7)
            buttonsContext[6] = playerItem!
            openButtonComputer()
        }
    }
    
    
    @IBAction func clickButton8() {
        if buttonsContext[7] == .cellEmpty {
            openButtonPlayer(button: button8)
            buttonsContext[7] = playerItem!
            openButtonComputer()
        }
    }

    
    @IBAction func clickButton9() {
        if buttonsContext[8] == .cellEmpty {
            openButtonPlayer(button: button9)
            buttonsContext[8] = playerItem!
            openButtonComputer()
        }
    }
    
    private func openButtonPlayer(button: UIButton) {
        button.setTitle(playerItem?.rawValue, for: .normal)
        openedButtonsCount += 1
    }
    
    private func openButtonComputer() {
        if (openedButtonsCount < 9) {
            let buttonNum = Int.random(in: 0..<9)
            if buttonsContext[buttonNum] == .cellEmpty {
                buttons![buttonNum].setTitle(computerItem?.rawValue, for: .normal)
                buttonsContext[buttonNum] = computerItem!
                openedButtonsCount += 1
            } else {
                openButtonComputer()
            }
        }
    }
}
