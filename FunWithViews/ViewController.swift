//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var topLeftView: UIView!
    @IBOutlet weak var topMiddleView: UIView!
    @IBOutlet weak var topRightView: UIView!
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var bottomLeftView: UIView!
    @IBOutlet weak var bottomMiddleView: UIView!
    @IBOutlet weak var bottomRightView: UIView!
    @IBOutlet weak var firstRoll: UILabel!
    @IBOutlet weak var secondRoll: UILabel!
    @IBOutlet weak var thirdRoll: UILabel!
    @IBOutlet weak var fourthRoll: UILabel!
    @IBOutlet weak var fifthRoll: UILabel!
    @IBOutlet weak var sixthRoll: UILabel!
    
    var numRolls = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        processView(for: roll)
        processRoll(for: roll)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func initialSetup() {
        hideAllViews()
        clearAllRolls()
    }

    func clearAllRolls() {
        for label in [firstRoll, secondRoll, thirdRoll, fourthRoll, fifthRoll, sixthRoll] {
            label?.text = ""
            label?.isHidden = true
        }
    }
    
    func hideAllViews() {
        topLeftView.isHidden = true
        topMiddleView.isHidden = true
        topRightView.isHidden = true
        centerView.isHidden = true
        bottomLeftView.isHidden = true
        bottomMiddleView.isHidden = true
        bottomRightView.isHidden = true
    }
    
    func processRoll(for num: Int) {
        numRolls += 1
        if numRolls == 7 {
            numRolls = 1
            clearAllRolls()
        }
        
        
        
        switch numRolls {
        case 1:
            setRoll(label: firstRoll, num: num)
        case 2:
            setRoll(label: secondRoll, num: num)
        case 3:
            setRoll(label: thirdRoll, num: num)
        case 4:
            setRoll(label: fourthRoll, num: num)
        case 5:
            setRoll(label: fifthRoll, num: num)
        case 6:
            setRoll(label: sixthRoll, num: num)
        default:
            break
        }
    }
    
    func setRoll(label: UILabel, num: Int) {
        label.isHidden = false
        label.text = "\(num)"
        label.backgroundColor = processColor(for: num)
    }
    
    func processColor(for num: Int) -> UIColor {
        switch num {
        case 1: return .red
        case 2: return .orange
        case 3: return .yellow
        case 4: return .green
        case 5: return .blue
        case 6: return .purple
        default: return .white
        }
    }
    
    func processView(for num: Int) {
        hideAllViews()
        switch num {
        case 1:
            centerView.isHidden = false
            centerView.backgroundColor = processColor(for: num)
        case 2:
            for view in [topLeftView, bottomRightView] {
                view?.isHidden = false
                view?.backgroundColor = processColor(for: num)
            }
        case 3:
            for view in [topRightView, centerView, bottomLeftView] {
                view?.isHidden = false
                view?.backgroundColor = processColor(for: num)
            }
        case 4:
            for view in [topLeftView, topRightView, bottomLeftView, bottomRightView] {
                view?.isHidden = false
                view?.backgroundColor = processColor(for: num)
            }
        case 5:
            for view in [topLeftView, topRightView, bottomLeftView, bottomRightView, centerView] {
                view?.isHidden = false
                view?.backgroundColor = processColor(for: num)
            }
        case 6:
            for view in [topLeftView, topMiddleView, topRightView, bottomLeftView, bottomMiddleView, bottomRightView] {
                view?.isHidden = false
                view?.backgroundColor = processColor(for: num)
            }
        default:
            break
        }
    }
}
