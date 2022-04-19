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
		print(sender.tag)
		var diceRollNumber = 0
		var diceType = 0
		
	}
	

}

