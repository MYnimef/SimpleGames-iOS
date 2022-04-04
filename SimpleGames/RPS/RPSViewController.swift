//
//  Game1ViewController.swift
//  SimpleGames
//
//  Created by Ivan Markov on 03.04.2022.
//

import UIKit


final class RPSViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onRockClick() {
        gameResult(item: .Rock)
    }
    
    @IBAction func onScissorsClick() {
        gameResult(item: .Scissors)
    }
    
    @IBAction func onPapperClick() {
        gameResult(item: .Papper)
    }
    
    private func gameResult(item: RPS) {
        let alert = UIAlertController(
            title: "Игра закончена",
            message: RPS.chooseWinner(human: item, computer: RPS.random()).rawValue,
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "Новая игра", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
}
