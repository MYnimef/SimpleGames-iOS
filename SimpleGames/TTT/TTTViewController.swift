//
//  TTTViewController.swift
//  SimpleGames
//
//  Created by Ivan Markov on 04.04.2022.
//

import UIKit


final class TTTViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlayTTTByX" {
            (segue.destination as! TTTGameViewController).setPlayerItem(item: .cellX)
            print("x")
        } else if segue.identifier == "PlayTTTBy0" {
            (segue.destination as! TTTGameViewController).setPlayerItem(item: .cell0)
            print("0")
        }
    }

}
