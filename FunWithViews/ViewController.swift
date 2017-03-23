//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    
    @IBOutlet weak var one: UIView!
    @IBOutlet weak var two: UIView!
    @IBOutlet weak var three: UIView!
    @IBOutlet weak var four: UIView!
    @IBOutlet weak var five: UIView!
    @IBOutlet weak var six: UIView!
    @IBOutlet weak var seven: UIView!
    
    @IBOutlet weak var round1: UIView!
    @IBOutlet weak var round2: UIView!
    @IBOutlet weak var round3: UIView!
    @IBOutlet weak var round4: UIView!
    @IBOutlet weak var round5: UIView!
    @IBOutlet weak var round6: UIView!
    
    @IBOutlet weak var round1Label: UILabel!
    @IBOutlet weak var round2Label: UILabel!
    @IBOutlet weak var round3Label: UILabel!
    @IBOutlet weak var round4Label: UILabel!
    @IBOutlet weak var round5Label: UILabel!
    @IBOutlet weak var round6Label: UILabel!
    
    // Variables
    
    var randomNumber = 0
    var roundCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // fuctions
    
    @IBAction func dieButtonTapped(_ sender: AnyObject)
    {
        if roundCounter == 6
        {
            roundCounter = 0
        }
        else
        {
            roundCounter += 1
        }
        
        manageDotViews(number: 0)
        randomDiceRoll()
        manageDotViews(number: randomNumber)
        manageCounterView()
        
        if roundCounter == 0
        {
            one.isHidden = true
            two.isHidden = true
            three.isHidden = true
            four.isHidden = true
            five.isHidden = true
            six.isHidden = true
            seven.isHidden = true
        }
    }
    
    func manageDotViews(number: Int)
    {
        switch number
        {
        case 0:
            one.isHidden = true
            two.isHidden = true
            three.isHidden = true
            four.isHidden = true
            five.isHidden = true
            six.isHidden = true
            seven.isHidden = true
            
        case 1:
            one.isHidden = false
            
        case 2:
            one.isHidden = false
            two.isHidden = false
            
        case 3:
            one.isHidden = false
            seven.isHidden = false
            six.isHidden = false
            
        case 4:
            one.isHidden = false
            three.isHidden = false
            four.isHidden = false
            six.isHidden = false
            
        case 5:
            one.isHidden = false
            three.isHidden = false
            four.isHidden = false
            six.isHidden = false
            seven.isHidden = false
            
        case 6:
            one.isHidden = false
            two.isHidden = false
            three.isHidden = false
            four.isHidden = false
            five.isHidden = false
            six.isHidden = false
            
        default:
            print("Something is wrong")
        }
    }
    
    func manageCounterView()
    {
        switch roundCounter
        {
        case 0:
            round1.isHidden = true
            round1Label.isHidden = true
            round2.isHidden = true
            round2Label.isHidden = true
            round3.isHidden = true
            round3Label.isHidden = true
            round4.isHidden = true
            round4Label.isHidden = true
            round5.isHidden = true
            round5Label.isHidden = true
            round6.isHidden = true
            round6Label.isHidden = true
            
        case 1:
            round1.isHidden = false
            round1Label.isHidden = false
            round1Label.text = String(randomNumber)
            
        case 2:
            round2.isHidden = false
            round2Label.isHidden = false
            round2Label.text = String(randomNumber)
            
        case 3:
            round3.isHidden = false
            round3Label.isHidden = false
            round3Label.text = String(randomNumber)
            
        case 4:
            round4.isHidden = false
            round4Label.isHidden = false
            round4Label.text = String(randomNumber)
            
        case 5:
            round5.isHidden = false
            round5Label.isHidden = false
            round5Label.text = String(randomNumber)
            
        case 6:
            round6.isHidden = false
            round6Label.isHidden = false
            round6Label.text = String(randomNumber)
            
        default:
            print("Something is wrong with the counter view")
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll()
    {
        let rand = Int(arc4random_uniform(6)+1)
        randomNumber = rand
    }
}
