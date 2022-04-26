//
//  ViewController.swift
//  DungeonDice
//
//  Created by Michael Gregory on 4/19/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
	
    @IBOutlet weak var diceLabel: UILabel!
    
    func playSound(){
        if let sound = NSDataAsset(name: "sound0"){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
            }
        } else {
            print("ERROR: Could not read the data from file sound0")
        }
    }
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	@IBAction func rollDicePress(_ sender: UIButton) {
		
        let diceRoll = Int.random(in: 1...sender.tag)
        playSound()
		
		diceLabel.text = "You rolled a \(sender.currentTitle!) die and got \(diceRoll)"
	}
}

