//
//  ViewController.swift
//  DungeonDice
//
//  Created by Michael Gregory on 4/19/22.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var diceLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	@IBAction func rollDicePress(_ sender: UIButton) {
		
		var diceValue = sender.tag
		var diceRoll = Int.random(in: 1...diceValue)
		
		diceLabel.text = "You rolled a \(sender.currentTitle!) die and got \(diceRoll)"
	}
}

