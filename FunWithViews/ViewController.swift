//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //Views
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var View2: UIView!
    @IBOutlet weak var View3: UIView!
    @IBOutlet weak var View4: UIView!
    @IBOutlet weak var View5: UIView!
    @IBOutlet weak var View6: UIView!
    @IBOutlet weak var VIew7: UIView!
    
    //Labels
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        

       

    }
    

    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if Label1.isHidden {
            Label1.text = diceScore
            Label1.isHidden = false
        } else if Label2.isHidden {
            Label2.text = diceScore
            Label2.isHidden = false
        } else if Label3.isHidden {
            Label3.text = diceScore
            Label3.isHidden = false
        }else if Label4.isHidden {
            Label4.text = diceScore
            Label4.isHidden = false
        }else if Label5.isHidden {
            Label5.text = diceScore
            Label5.isHidden = false
        }else if Label6.isHidden {
            Label6.text = diceScore
            Label6.isHidden = false
        }
    
        }
    
    func displayViews(diceView:Int){
        
        var number = updateLabelWithRoll(roll: randomDiceRoll())
        let diceNum = Int(diceView)
        
        switch diceNum {
        case 1:
            View1.isHidden = false
        case 2:
            View2.isHidden = false
        case 3:
            View3.isHidden = false
        case 4:
            View4.isHidden = false
        case 5:
            View5.isHidden = false
        case 6:
            View6.isHidden = false
        default:
            print()
        }
    }
    }

    

