//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //one image represent a rolled "one"
    @IBOutlet weak var one: UIImageView!
    
    //two
    @IBOutlet weak var two_1: UIImageView!
    @IBOutlet weak var two_2: UIImageView!
    
    //three
    @IBOutlet weak var three: UIImageView!
    
    //four
    @IBOutlet weak var four_1: UIImageView!
    @IBOutlet weak var four_2: UIImageView!
    
    //six
    @IBOutlet weak var six_1: UIImageView!
    @IBOutlet weak var six_2: UIImageView!
    
    //ROLL RESULTS
    @IBOutlet weak var rollResultOne: UILabel!
    @IBOutlet weak var rollResultTwo: UILabel!
    @IBOutlet weak var rollResultThree: UILabel!
    @IBOutlet weak var rollResultFour: UILabel!
    @IBOutlet weak var rollResultFive: UILabel!
    @IBOutlet weak var rollResultSix: UILabel!
    
    //TOTAL AFTER SIX ROLLS
    @IBOutlet weak var total: UILabel!
    
    var rollArray = [Int]()
    var numberOfRolls = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        one.alpha = 0
        
        two_1.alpha = 0
        two_2.alpha = 0
        
        three.alpha = 0
        
        four_1.alpha = 0
        four_2.alpha = 0
        
        six_1.alpha = 0
        six_2.alpha = 0
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        var numberRolled = randomDiceRoll()
        
        rollArray.append(numberRolled)
        
        print(rollArray)
        switch numberRolled {
        case 1:
            rollOne()
            numberOfRolls+=1
            
        case 2:
            rollTwo()
            numberOfRolls+=1
            
        case 3:
            rollthree()
            numberOfRolls+=1
            
        case 4:
            rollFour()
            numberOfRolls+=1
            
        case 5:
            rollFive()
            numberOfRolls+=1
            
        case 6:
            rollSix()
            numberOfRolls+=1
            
        default:
            print("You rolled a number that doesn't exist on a die")
        }
        
        switch numberOfRolls {
        case 1:
            rollResultOne.text = String(describing: numberRolled)
            
        case 2:
            rollResultTwo.text = String(describing: numberRolled)
            
        case 3:
            rollResultThree.text = String(describing: numberRolled)
            
        case 4:
            rollResultFour.text = String(describing: numberRolled)
            
        case 5:
            rollResultFive.text = String(describing: numberRolled)
            
        case 6:
            rollResultSix.text = String(describing: numberRolled)
            var sum: Int = 0
            for i in rollArray {
                sum+=i
            }
            
            total.text = String(describing: sum)
            
            
        default:
            print("...")
        }
        
        if rollArray.count == 7 {
            numberOfRolls = 0
            rollArray.removeAll()
            rollResultOne.text = String(describing: 0)
            rollResultTwo.text = String(describing: 0)
            rollResultThree.text = String(describing: 0)
            rollResultFour.text = String(describing: 0)
            rollResultFive.text = String(describing: 0)
            rollResultSix.text = String(describing: 0)
            
            total.text = String(describing: 0)
        }
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    //pre-configured roll functions
    func rollOne(){
        UIImageView.animate(withDuration: 0.5, animations: {
            self.one.alpha = 1
            
            self.two_1.alpha = 0
            self.two_2.alpha = 0
            
            self.three.alpha = 0
            
            self.four_1.alpha = 0
            self.four_2.alpha = 0
            
            self.six_1.alpha = 0
            self.six_2.alpha = 0
        })
    }
    

    
    func rollTwo(){
        UIImageView.animate(withDuration: 0.5, animations: {
            self.one.alpha = 0
            
            self.two_1.alpha = 1
            self.two_2.alpha = 1
            
            self.three.alpha = 0
            
            self.four_1.alpha = 0
            self.four_2.alpha = 0
            
            self.six_1.alpha = 0
            self.six_2.alpha = 0
        })
    }
    
    func rollthree(){
        UIImageView.animate(withDuration: 0.5, animations: {
            self.one.alpha = 0
            
            self.two_1.alpha = 1
            self.two_2.alpha = 1
            
            self.three.alpha = 1
            
            self.four_1.alpha = 0
            self.four_2.alpha = 0
            
            self.six_1.alpha = 0
            self.six_2.alpha = 0
        })
    }
    
    func rollFour(){
        UIImageView.animate(withDuration: 0.5, animations: {
            self.one.alpha = 0
            
            self.two_1.alpha = 1
            self.two_2.alpha = 1
            
            self.three.alpha = 0
            
            self.four_1.alpha = 1
            self.four_2.alpha = 1
            
            self.six_1.alpha = 0
            self.six_2.alpha = 0
        })
    }
    
    func rollFive(){
        UIImageView.animate(withDuration: 0.5, animations: {
            self.one.alpha = 0
            
            self.two_1.alpha = 1
            self.two_2.alpha = 1
            
            self.three.alpha = 1
            
            self.four_1.alpha = 1
            self.four_2.alpha = 1
            
            self.six_1.alpha = 0
            self.six_2.alpha = 0
        })
    }
    
    func rollSix(){
        UIImageView.animate(withDuration: 0.5, animations: {
            self.one.alpha = 0
            
            self.two_1.alpha = 1
            self.two_2.alpha = 1
            
            self.three.alpha = 0
            
            self.four_1.alpha = 1
            self.four_2.alpha = 1
            
            self.six_1.alpha = 1
            self.six_2.alpha = 1
        })

    }
}
