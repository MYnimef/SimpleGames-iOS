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
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlayTTTByX" {
            (segue.destination as! TTTGameViewController).setPlayerItem(item: .cellX)
        } else if segue.identifier == "PlayTTTBy0" {
            (segue.destination as! TTTGameViewController).setPlayerItem(item: .cell0)
        }
    }

}
