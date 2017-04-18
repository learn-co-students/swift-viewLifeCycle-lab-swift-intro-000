//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var D1: UIView!
    @IBOutlet weak var D2: UIView!
    @IBOutlet weak var D3: UIView!
    @IBOutlet weak var D4: UIView!
    @IBOutlet weak var D5: UIView!
    @IBOutlet weak var D6: UIView!
    @IBOutlet weak var D7: UIView!
    
    @IBOutlet weak var last1: UIView!
    @IBOutlet weak var last2: UIView!
    @IBOutlet weak var last3: UIView!
    @IBOutlet weak var last4: UIView!
    @IBOutlet weak var last5: UIView!
    @IBOutlet weak var last6: UIView!
    @IBOutlet var lasts: [UIView]!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        hideRollViews()
        last1.isHidden = true
        last2.isHidden = true
        last3.isHidden = true
        last4.isHidden = true
        last5.isHidden = true
        last6.isHidden = true
    }
    
    func hideRollViews() {
        D1.isHidden = true
        D2.isHidden = true
        D3.isHidden = true
        D4.isHidden = true
        D5.isHidden = true
        D6.isHidden = true
        D7.isHidden = true
        for view in lasts {
            if let label = view.subviews[0] as? UILabel {
                
                label.textAlignment = .center
                
            }
        }
    }
   

    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        hideRollViews()
        switch roll {
        case 1:
            D4.isHidden = false
        case 2:
            D3.isHidden = false
            D5.isHidden = false
        case 3:
            D3.isHidden = false
            D5.isHidden = false
            D4.isHidden = false
        case 4:
            D1.isHidden = false
            D3.isHidden = false
            D5.isHidden = false
            D7.isHidden = false
        case 5:
            D1.isHidden = false
            D3.isHidden = false
            D5.isHidden = false
            D7.isHidden = false
            D4.isHidden = false
        case 6:
            D1.isHidden = false
            D2.isHidden = false
            D3.isHidden = false
            D5.isHidden = false
            D6.isHidden = false
            D7.isHidden = false
   default: break
        }
        callHistory()
        if let label = last1.subviews[0] as? UILabel {

            label.text = String(roll)

        }

    }
    
    var historyCount = 0
    func callHistory() {
        historyCount += 1
        switch historyCount {
        case 1:
            last1.isHidden = false
        case 2:
            last2.isHidden = false
            for i in stride(from:0, through:0, by: -1) {
                if let firstLabel = lasts[i].subviews[0] as? UILabel, let secondLabel = lasts[i+1].subviews[0] as? UILabel {
                    //            label.center = last1.center
                    secondLabel.text = firstLabel.text
                }
            }
        case 3:
            last3.isHidden = false
            for i in stride(from:1, through:0, by: -1) {
                if let firstLabel = lasts[i].subviews[0] as? UILabel, let secondLabel = lasts[i+1].subviews[0] as? UILabel {
                    //            label.center = last1.center
                    secondLabel.text = firstLabel.text
                }
            }
        case 4:
            last4.isHidden = false
            for i in stride(from:2, through:0, by: -1) {
                if let firstLabel = lasts[i].subviews[0] as? UILabel, let secondLabel = lasts[i+1].subviews[0] as? UILabel {
                    //            label.center = last1.center
                    secondLabel.text = firstLabel.text
                }
            }
        case 5:
            last5.isHidden = false
            for i in stride(from:3, through:0, by: -1) {
                if let firstLabel = lasts[i].subviews[0] as? UILabel, let secondLabel = lasts[i+1].subviews[0] as? UILabel {
                    //            label.center = last1.center
                    secondLabel.text = firstLabel.text
                }
            }
        case 6:
            last6.isHidden = false
            for i in stride(from:4, through:0, by: -1) {
                if let firstLabel = lasts[i].subviews[0] as? UILabel, let secondLabel = lasts[i+1].subviews[0] as? UILabel {
                    //            label.center = last1.center
                    secondLabel.text = firstLabel.text
                }
            }
        default:
            for i in stride(from:4, through:0, by: -1) {
                if let firstLabel = lasts[i].subviews[0] as? UILabel, let secondLabel = lasts[i+1].subviews[0] as? UILabel {
                    //            label.center = last1.center
                    secondLabel.text = firstLabel.text
                }
            }
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
