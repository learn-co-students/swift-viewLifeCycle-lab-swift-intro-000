//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tile0: UIView!
    @IBOutlet weak var tile1: UIView!
    @IBOutlet weak var tile2: UIView!
    @IBOutlet weak var tile3: UIView!
    @IBOutlet weak var tile4: UIView!
    @IBOutlet weak var tile5: UIView!
    @IBOutlet weak var tile6: UIView!
    
    @IBOutlet weak var res0: UILabel!
    @IBOutlet weak var res1: UILabel!
    @IBOutlet weak var res2: UILabel!
    @IBOutlet weak var res3: UILabel!
    @IBOutlet weak var res4: UILabel!
    @IBOutlet weak var res5: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tile0.isHidden = true
        tile1.isHidden = true
        tile2.isHidden = true
        tile3.isHidden = true
        tile4.isHidden = true
        tile5.isHidden = true
        tile6.isHidden = true
        
        res0.isHidden = true
        res1.isHidden = true
        res2.isHidden = true
        res3.isHidden = true
        res4.isHidden = true
        res5.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let result = randomDiceRoll()
        print(result)
        
        updateSquares(result: result)
        updateResults(roll: result)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateSquares(result: Int) {
        // hide all
        tile0.isHidden = true
        tile1.isHidden = true
        tile2.isHidden = true
        tile3.isHidden = true
        tile4.isHidden = true
        tile5.isHidden = true
        tile6.isHidden = true
        
        // redraw
        switch result {
        case 1:
            tile3.isHidden = false
        case 2:
            tile5.isHidden = false
            tile1.isHidden = false
        case 3:
            tile5.isHidden = false
            tile1.isHidden = false
            tile3.isHidden = false
        case 4:
            tile0.isHidden = false
            tile1.isHidden = false
            tile5.isHidden = false
            tile6.isHidden = false
        case 5:
            tile0.isHidden = false
            tile1.isHidden = false
            tile5.isHidden = false
            tile6.isHidden = false
            tile3.isHidden = false
        case 6:
            tile0.isHidden = false
            tile1.isHidden = false
            tile2.isHidden = false
            tile4.isHidden = false
            tile5.isHidden = false
            tile6.isHidden = false
        default:
            // all are hidden
            print("Undetermined")
        }
    }
    
    func updateResults(roll: Int) {
        let res: String = String(roll)
        if res0.isHidden {
            res0.text = res
            res0.isHidden = false
        } else if res1.isHidden {
            res1.text = res
            res1.isHidden = false
        } else if res2.isHidden {
            res2.text = res
            res2.isHidden = false
        } else if res3.isHidden {
            res3.text = res
            res3.isHidden = false
        } else if res4.isHidden {
            res4.text = res
            res4.isHidden = false
        } else if res5.isHidden {
            res5.text = res
            res5.isHidden = false
        }
    }

}
