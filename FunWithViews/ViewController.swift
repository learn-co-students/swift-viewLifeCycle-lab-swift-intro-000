//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: - IBOutlet
    
    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var viewThree: UIView!
    @IBOutlet weak var viewFour: UIView!
    @IBOutlet weak var viewFive: UIView!
    @IBOutlet weak var viewSix: UIView!
    @IBOutlet weak var viewSeven: UIView!
    
    @IBOutlet weak var resultOneView: UIView!
    @IBOutlet weak var resultTwoView: UIView!
    @IBOutlet weak var resultThreeView: UIView!
    @IBOutlet weak var resultFourView: UIView!
    @IBOutlet weak var resultFiveView: UIView!
    @IBOutlet weak var resultSixView: UIView!
    
    @IBOutlet weak var resultOne: UILabel!
    @IBOutlet weak var resultTwo: UILabel!
    @IBOutlet weak var resultThree: UILabel!
    @IBOutlet weak var resultFour: UILabel!
    @IBOutlet weak var resultFive: UILabel!
    @IBOutlet weak var resultSix: UILabel!
    
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startSetting()
    }
    
    func startSetting() {
        viewOne.isHidden = true
        viewTwo.isHidden = true
        viewThree.isHidden = true
        viewFour.isHidden = true
        viewFive.isHidden = true
        viewSix.isHidden = true
        viewSeven.isHidden = true
        
        resultOneView.isHidden = true
        resultTwoView.isHidden = true
        resultThreeView.isHidden = true
        resultFourView.isHidden = true
        resultFiveView.isHidden = true
        resultSixView.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        startSetting()
        let result = randomDiceRoll()
        updateViewsWithRoll(number: result)
        showResult(times: diceResults.count)
        timesCount()
    }
    
    
    func timesCount() {
        print(diceResults)
        if diceResults.count == 6 {
            howManyTimes = 0
            diceResults = []
        }
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        let result = Int(arc4random_uniform(6) + 1)
        diceResults.append(result)
        return result
    }
    
    
    var howManyTimes: Int = 0
    var diceResults: [Int] = []
    
    
    
    
    func updateViewsWithRoll(number: Int) {
        switch number {
        case 1:
            viewOne.isHidden = false
        case 2:
            viewOne.isHidden = false
            viewTwo.isHidden = false
        case 3:
            viewOne.isHidden = false
            viewTwo.isHidden = false
            viewThree.isHidden = false
        case 4:
            viewOne.isHidden = false
            viewTwo.isHidden = false
            viewThree.isHidden = false
            viewFour.isHidden = false
        case 5:
            viewOne.isHidden = false
            viewTwo.isHidden = false
            viewThree.isHidden = false
            viewFour.isHidden = false
            viewFive.isHidden = false
        case 6:
            viewOne.isHidden = false
            viewTwo.isHidden = false
            viewThree.isHidden = false
            viewFour.isHidden = false
            viewFive.isHidden = false
            viewSix.isHidden = false
        default:
            break
        }
    }
    
  
    func showResult(times: Int) {
        switch times {
        case 1:
            resultOneView.isHidden = false
            resultOneView.backgroundColor = .blue
            resultOne.text = "\(diceResults[0])"
        case 2:
            resultOneView.isHidden = false
            resultOneView.backgroundColor = .blue
            resultOne.text = "\(diceResults[0])"
            resultTwoView.isHidden = false
            resultTwoView.backgroundColor = .yellow
            resultTwo.text = "\(diceResults[1])"
        case 3:
            resultOneView.isHidden = false
            resultOneView.backgroundColor = .blue
            resultOne.text = "\(diceResults[0])"
            resultTwoView.isHidden = false
            resultTwoView.backgroundColor = .yellow
            resultTwo.text = "\(diceResults[1])"
            resultThreeView.isHidden = false
            resultThreeView.backgroundColor = .magenta
            resultThree.text = "\(diceResults[2])"
        case 4:
            resultOneView.isHidden = false
            resultOneView.backgroundColor = .blue
            resultOne.text = "\(diceResults[0])"
            resultTwoView.isHidden = false
            resultTwoView.backgroundColor = .yellow
            resultTwo.text = "\(diceResults[1])"
            resultThreeView.isHidden = false
            resultThreeView.backgroundColor = .magenta
            resultThree.text = "\(diceResults[2])"
            resultFourView.isHidden = false
            resultFourView.backgroundColor = .brown
            resultFour.text = "\(diceResults[3])"
        case 5:
            resultOneView.isHidden = false
            resultOneView.backgroundColor = .blue
            resultOne.text = "\(diceResults[0])"
            resultTwoView.isHidden = false
            resultTwoView.backgroundColor = .yellow
            resultTwo.text = "\(diceResults[1])"
            resultThreeView.isHidden = false
            resultThreeView.backgroundColor = .magenta
            resultThree.text = "\(diceResults[2])"
            resultFourView.isHidden = false
            resultFourView.backgroundColor = .brown
            resultFour.text = "\(diceResults[3])"
            resultFiveView.isHidden = false
            resultFiveView.backgroundColor = .red
            resultFive.text = "\(diceResults[4])"
        case 6:
            resultOneView.isHidden = false
            resultOneView.backgroundColor = .blue
            resultOne.text = "\(diceResults[0])"
            resultTwoView.isHidden = false
            resultTwoView.backgroundColor = .yellow
            resultTwo.text = "\(diceResults[1])"
            resultThreeView.isHidden = false
            resultThreeView.backgroundColor = .magenta
            resultThree.text = "\(diceResults[2])"
            resultFourView.isHidden = false
            resultFourView.backgroundColor = .brown
            resultFour.text = "\(diceResults[3])"
            resultFiveView.isHidden = false
            resultFiveView.backgroundColor = .red
            resultFive.text = "\(diceResults[4])"
            resultSixView.isHidden = false
            resultSixView.backgroundColor = .green
            resultSix.text = "\(diceResults[5])"
        default:
            break
        }
       
    }
   
    

}
