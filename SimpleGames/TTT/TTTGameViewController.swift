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
    
    var buttons: [UIButton]?
    var model: TTTModel!
    
    func setPlayerItem(item: TTT) {
        model = TTTModel(playerItem: item)
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
        
        model.setFillCell(fillCell: fillButton)
    }

    @IBAction func clickButton1() {
        model.playerClicked(cellNum: 0)
    }
    
    @IBAction func clickButton2() {
        model.playerClicked(cellNum: 1)
    }
    
    @IBAction func clickButton3() {
        model.playerClicked(cellNum: 2)
    }
    
    @IBAction func clickButton4() {
        model.playerClicked(cellNum: 3)
    }
    
    @IBAction func clickButton5() {
        model.playerClicked(cellNum: 4)
    }
    
    @IBAction func clickButton6() {
        model.playerClicked(cellNum: 5)
    }
    
    @IBAction func clickButton7() {
        model.playerClicked(cellNum: 6)
    }
    
    
    @IBAction func clickButton8() {
        model.playerClicked(cellNum: 7)
    }

    
    @IBAction func clickButton9() {
        model.playerClicked(cellNum: 8)
    }
    
    func fillButton(buttonNum: Int, content: String) {
        buttons?[buttonNum].setTitle(content, for: .normal)
    }
}
