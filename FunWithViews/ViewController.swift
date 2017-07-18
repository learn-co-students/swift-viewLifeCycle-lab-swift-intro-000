//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // connect die pips
    @IBOutlet weak var diePip1: UIView!
    @IBOutlet weak var diePip2: UIView!
    @IBOutlet weak var diePip3: UIView!
    @IBOutlet weak var diePip4: UIView!
    @IBOutlet weak var diePip5: UIView!
    @IBOutlet weak var diePip6: UIView!
    @IBOutlet weak var diePip7: UIView!
    
    // connect roll score labels
    @IBOutlet weak var dieScore1: UILabel!
    @IBOutlet weak var dieScore2: UILabel!
    @IBOutlet weak var dieScore3: UILabel!
    @IBOutlet weak var dieScore4: UILabel!
    @IBOutlet weak var dieScore5: UILabel!
    @IBOutlet weak var dieScore6: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // hide die pips
        diePip1.isHidden = true
        diePip2.isHidden = true
        diePip3.isHidden = true
        diePip4.isHidden = true
        diePip5.isHidden = true
        diePip6.isHidden = true
        diePip7.isHidden = true
        // hide roll score labels
        dieScore1.isHidden = true
        dieScore2.isHidden = true
        dieScore3.isHidden = true
        dieScore4.isHidden = true
        dieScore5.isHidden = true
        dieScore6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        // get the die score for a single roll
        let dieScore = randomDiceRoll()
        print("Die score = \(dieScore)")
        updatePipsWithRoll(dieScore: dieScore)
        updateResultsWithRoll(dieScore: dieScore)
    }
    
    func updatePipsWithRoll(dieScore: Int) {
        // hide all die pips
        diePip1.isHidden = true
        diePip2.isHidden = true
        diePip3.isHidden = true
        diePip4.isHidden = true
        diePip5.isHidden = true
        diePip6.isHidden = true
        diePip7.isHidden = true
        
        // display pips according to die score
        switch dieScore {
        case 1:
            diePip4.isHidden = false
        case 2:
            diePip1.isHidden = false; diePip7.isHidden = false
        case 3:
            diePip2.isHidden = false; diePip4.isHidden = false; diePip6.isHidden = false
        case 4:
            diePip1.isHidden = false; diePip2.isHidden = false; diePip6.isHidden = false; diePip7.isHidden = false
        case 5:
            diePip1.isHidden = false; diePip2.isHidden = false; diePip4.isHidden = false; diePip6.isHidden = false; diePip7.isHidden = false
        case 6:
            diePip1.isHidden = false; diePip2.isHidden = false; diePip3.isHidden = false; diePip5.isHidden = false; diePip6.isHidden = false; diePip7.isHidden = false
        default: break
        }
    }
    
    func updateResultsWithRoll(dieScore: Int) {
        let dieScoreString = String(dieScore)
        // search for first hidden label, replace with current score and display
        if dieScore1.isHidden {
            dieScore1.text = dieScoreString
            dieScore1.isHidden = false
        } else if dieScore2.isHidden {
            dieScore2.text = dieScoreString
            dieScore2.isHidden = false
        } else if dieScore3.isHidden {
            dieScore3.text = dieScoreString
            dieScore3.isHidden = false
        } else if dieScore4.isHidden {
            dieScore4.text = dieScoreString
            dieScore4.isHidden = false
        } else if dieScore5.isHidden {
            dieScore5.text = dieScoreString
            dieScore5.isHidden = false
        } else if dieScore6.isHidden {
            dieScore6.text = dieScoreString
            dieScore6.isHidden = false
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
