//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var die1: UIView!
	@IBOutlet weak var die2: UIView!
	@IBOutlet weak var die3: UIView!
	@IBOutlet weak var die4: UIView!
	@IBOutlet weak var die5: UIView!
	@IBOutlet weak var die6: UIView!
	@IBOutlet weak var die7: UIView!
	
	@IBOutlet weak var score1: UILabel!
	@IBOutlet weak var score2: UILabel!
	@IBOutlet weak var score3: UILabel!
	@IBOutlet weak var score4: UILabel!
	@IBOutlet weak var score5: UILabel!
	@IBOutlet weak var score6: UILabel!
	
	@IBOutlet weak var scoreView1: UIView!
	@IBOutlet weak var scoreView2: UIView!
	@IBOutlet weak var scoreView3: UIView!
	@IBOutlet weak var scoreView4: UIView!
	@IBOutlet weak var scoreView5: UIView!
	@IBOutlet weak var scoreView6: UIView!
		
    override func viewDidLoad() {
        super.viewDidLoad()
		
		self.hideAllDies()
		self.hideScoreView()
    }
	
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
		
		self.hideAllDies()

		if scoreView1.isHidden == true {
		
			score1.text = String(castTheDie())
			scoreView1.isHidden = false
			
		} else if scoreView2.isHidden == true {
		
			score2.text = String(castTheDie())
			scoreView2.isHidden = false
			
		} else if scoreView3.isHidden == true {
		
			score3.text = String(castTheDie())
			scoreView3.isHidden = false
			
		} else if scoreView4.isHidden == true {
		
			score4.text = String(castTheDie())
			scoreView4.isHidden = false
			
		} else if scoreView5.isHidden == true {
		
			score5.text = String(castTheDie())
			scoreView5.isHidden = false
			
		} else if scoreView6.isHidden == true {
		
			score6.text = String(castTheDie())
			scoreView6.isHidden = false
			
		} else if scoreView6.isHidden == false {
		
			hideScoreView()
		}
    }

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
	
	func hideAllDies() {
	
		die1.isHidden = true
		die2.isHidden = true
		die3.isHidden = true
		die4.isHidden = true
		die5.isHidden = true
		die6.isHidden = true
		die7.isHidden = true
	}
	
	
	func hideScoreView() {
		
		scoreView1.isHidden = true
		scoreView2.isHidden = true
		scoreView3.isHidden = true
		scoreView4.isHidden = true
		scoreView5.isHidden = true
		scoreView6.isHidden = true

	}
	
	func castTheDie() -> Int {
		
		let cast = self.randomDiceRoll()
		
		switch cast {
		
		case 1:
			die4.isHidden = false
			
		case 2:
			die1.isHidden = false
			die7.isHidden = false
			
		case 3:
			die2.isHidden = false
			die4.isHidden = false
			die6.isHidden = false
			
		case 4:
			die1.isHidden = false
			die2.isHidden = false
			die6.isHidden = false
			die7.isHidden = false
			
		case 5:
			die1.isHidden = false
			die2.isHidden = false
			die4.isHidden = false
			die6.isHidden = false
			die7.isHidden = false
			
		case 6:
			die1.isHidden = false
			die2.isHidden = false
			die3.isHidden = false
			die5.isHidden = false
			die6.isHidden = false
			die7.isHidden = false
			
		default:
			self.hideAllDies()
		}
		
		return cast
	}
}
