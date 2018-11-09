//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var dieView1: UIView!
    @IBOutlet var dieView2: UIView!
    @IBOutlet var dieView3: UIView!
    @IBOutlet var dieView4: UIView!
    @IBOutlet var dieView5: UIView!
    @IBOutlet var dieView6: UIView!
    @IBOutlet var dieView7: UIView!
    
    @IBOutlet var scoreView1: UIView!
    @IBOutlet var scoreView2: UIView!
    @IBOutlet var scoreView3: UIView!
    @IBOutlet var scoreView4: UIView!
    @IBOutlet var scoreView5: UIView!
    @IBOutlet var scoreView6: UIView!
    
    @IBOutlet var score1Label: UILabel!
    @IBOutlet var score2Label: UILabel!
    @IBOutlet var score3Label: UILabel!
    @IBOutlet var score4Label: UILabel!
    @IBOutlet var score5Label: UILabel!
    @IBOutlet var score6Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dieView1.isHidden = true
        dieView2.isHidden = true
        dieView3.isHidden = true
        dieView4.isHidden = true
        dieView5.isHidden = true
        dieView6.isHidden = true
        dieView7.isHidden = true
        
        scoreView1.isHidden = true
        scoreView2.isHidden = true
        scoreView3.isHidden = true
        scoreView4.isHidden = true
        scoreView5.isHidden = true
        scoreView6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let score = randomDiceRoll()
        
        if scoreView6.isHidden {
            showViews(for: score)
            updateLabels(for: score)
        } else {
            return
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    func showViews(for score: Int) {
        switch score {
        case 1:
            dieView1.isHidden = true
            dieView2.isHidden = true
            dieView3.isHidden = true
            dieView4.isHidden = false
            dieView5.isHidden = true
            dieView6.isHidden = true
            dieView7.isHidden = true
        case 2:
            dieView1.isHidden = true
            dieView2.isHidden = true
            dieView3.isHidden = false
            dieView4.isHidden = true
            dieView5.isHidden = false
            dieView6.isHidden = true
            dieView7.isHidden = true
        case 3:
            dieView1.isHidden = true
            dieView2.isHidden = true
            dieView3.isHidden = false
            dieView4.isHidden = false
            dieView5.isHidden = false
            dieView6.isHidden = true
            dieView7.isHidden = true
        case 4:
            dieView1.isHidden = false
            dieView2.isHidden = true
            dieView3.isHidden = false
            dieView4.isHidden = true
            dieView5.isHidden = false
            dieView6.isHidden = true
            dieView7.isHidden = false
        case 5:
            dieView1.isHidden = false
            dieView2.isHidden = true
            dieView3.isHidden = false
            dieView4.isHidden = false
            dieView5.isHidden = false
            dieView6.isHidden = true
            dieView7.isHidden = false
        case 6:
            dieView1.isHidden = false
            dieView2.isHidden = false
            dieView3.isHidden = false
            dieView4.isHidden = true
            dieView5.isHidden = false
            dieView6.isHidden = false
            dieView7.isHidden = false
        default:
            break
        }
    }
    
    func updateLabels(for score: Int) {
        if scoreView1.isHidden {
            score1Label.text = "\(score)"
            scoreView1.isHidden = false
        } else if scoreView2.isHidden {
            score2Label.text = "\(score)"
            scoreView2.isHidden = false
        } else if scoreView3.isHidden {
            score3Label.text = "\(score)"
            scoreView3.isHidden = false
        } else if scoreView4.isHidden {
            score4Label.text = "\(score)"
            scoreView4.isHidden = false
        } else if scoreView5.isHidden {
            score5Label.text = "\(score)"
            scoreView5.isHidden = false
        } else if scoreView6.isHidden {
            score6Label.text = "\(score)"
            scoreView6.isHidden = false
        } else {
            return
        }
    }
}
