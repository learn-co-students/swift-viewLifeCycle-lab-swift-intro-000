//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var diceContainerView: UIView!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    
    @IBOutlet weak var lastSixContainer: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject)
    {
        
        let diceRolled: Int = randomDiceRoll()
        showDice(numberRolled: diceRolled)
        showLastsix(numberRolled: diceRolled)
        
    }
    func showCounter(numberRolled: Int) -> Int
    {
        var count = 0
        
        let labels = lastSixContainer.subviews.flatMap{ $0 as? UILabel }
        
        for label in labels
        {
            if label.isHidden
            {
                label.isHidden = false
                label.text = String(numberRolled)
                return count
            } else {
                count = count + 1
            }
        }
        return count
    }
    
    func showLastsix(numberRolled: Int)
    {
        var counter:Int = showCounter(numberRolled: numberRolled)
        
        if (counter == 6)
        {
            self.lastSixContainer.subviews.forEach { $0.isHidden = true }
            counter = showCounter(numberRolled: numberRolled)
        }
    }
    
    func showDice(numberRolled: Int)
    {
        self.diceContainerView.subviews.forEach { $0.isHidden = true }
        
        switch numberRolled {
        case 1:
            view1.isHidden = false
        case 2:
            view2.isHidden = false
            view3.isHidden = false
        case 3:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
        case 4:
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
        case 5:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
        case 6:
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
        default:
            self.diceContainerView.subviews.forEach { $0.isHidden = false }
        }
        
    }
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int
    {
        return Int(arc4random_uniform(6) + 1)
    }

}
