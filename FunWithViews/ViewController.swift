//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dotLeftTop: UIView!
    @IBOutlet weak var dotLeftMid: UIView!
    @IBOutlet weak var dotLeftBottom: UIView!
    @IBOutlet weak var dotCenter: UIView!
    @IBOutlet weak var dotRightTop: UIView!
    @IBOutlet weak var dotRightMid: UIView!
    @IBOutlet weak var dotRightBottom: UIView!

    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    @IBOutlet weak var result3: UILabel!
    @IBOutlet weak var result4: UILabel!
    @IBOutlet weak var result5: UILabel!
    @IBOutlet weak var result6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dotLeftTop.isHidden = true
        dotLeftMid.isHidden = true
        dotLeftBottom.isHidden = true
        dotCenter.isHidden = true
        dotRightTop.isHidden = true
        dotRightMid.isHidden = true
        dotRightBottom.isHidden = true
        
        result1.isHidden = true
        result2.isHidden = true
        result3.isHidden = true
        result4.isHidden = true
        result5.isHidden = true
        result6.isHidden = true
        
    }
    
    // MARK: Results
    func resultOne() {
        dotLeftTop.isHidden = true
        dotLeftMid.isHidden = true
        dotLeftBottom.isHidden = true
        dotCenter.isHidden = false
        dotRightTop.isHidden = true
        dotRightMid.isHidden = true
        dotRightBottom.isHidden = true
        
        resultLabelSelector(1)
    }
    
    func resultTwo() {
        dotLeftTop.isHidden = false
        dotLeftMid.isHidden = true
        dotLeftBottom.isHidden = true
        dotCenter.isHidden = true
        dotRightTop.isHidden = true
        dotRightMid.isHidden = true
        dotRightBottom.isHidden = false
        
        resultLabelSelector(2)
    }
    
    func resultThree() {
        dotLeftTop.isHidden = false
        dotLeftMid.isHidden = true
        dotLeftBottom.isHidden = true
        dotCenter.isHidden = false
        dotRightTop.isHidden = true
        dotRightMid.isHidden = true
        dotRightBottom.isHidden = false
        
        resultLabelSelector(3)
    }
    
    func resultFour() {
        dotLeftTop.isHidden = false
        dotLeftMid.isHidden = true
        dotLeftBottom.isHidden = false
        dotCenter.isHidden = true
        dotRightTop.isHidden = false
        dotRightMid.isHidden = true
        dotRightBottom.isHidden = false
        
        resultLabelSelector(4)
    }
    
    func resultFive() {
        dotLeftTop.isHidden = false
        dotLeftMid.isHidden = true
        dotLeftBottom.isHidden = false
        dotCenter.isHidden = false
        dotRightTop.isHidden = false
        dotRightMid.isHidden = true
        dotRightBottom.isHidden = false
        
        resultLabelSelector(5)
    }
    
    func resultSix() {
        dotLeftTop.isHidden = false
        dotLeftMid.isHidden = false
        dotLeftBottom.isHidden = false
        dotCenter.isHidden = true
        dotRightTop.isHidden = false
        dotRightMid.isHidden = false
        dotRightBottom.isHidden = false
        
        resultLabelSelector(6)
    }
    
    // MARK: Result labels
    
    func resultLabelSelector(_ result: Int) {
        if result1.isHidden {
            result1.text = "\(result)"
            result1.isHidden = false
        } else if result2.isHidden {
            result2.text = "\(result)"
            result2.isHidden = false
        } else if result3.isHidden {
            result3.text = "\(result)"
            result3.isHidden = false
        } else if result4.isHidden {
            result4.text = "\(result)"
            result4.isHidden = false
        } else if result5.isHidden {
            result5.text = "\(result)"
            result5.isHidden = false
        } else if result6.isHidden {
            result6.text = "\(result)"
            result6.isHidden = false
        } else {
            result1.text = result2.text
            result2.text = result3.text
            result3.text = result4.text
            result4.text = result5.text
            result5.text = result6.text
            result6.text = "\(result)"
        }
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let result = randomDiceRoll()
        
        switch result {
        case 1:
            resultOne()
        case 2:
            resultTwo()
        case 3:
            resultThree()
        case 4:
            resultFour()
        case 5:
            resultFive()
        case 6:
            resultSix()
        default:
            print("UnknownError")
        }
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
