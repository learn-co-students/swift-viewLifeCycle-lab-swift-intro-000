//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Box1: UIView!
    @IBOutlet weak var Box2: UIView!
    @IBOutlet weak var Box3: UIView!
    @IBOutlet weak var Box4: UIView!
    @IBOutlet weak var Box5: UIView!
    @IBOutlet weak var Box6: UIView!
    @IBOutlet weak var Box7: UIView!
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Box1.isHidden=true
        Box2.isHidden=true
        Box3.isHidden=true
        Box4.isHidden=true
        Box5.isHidden=true
        Box6.isHidden=true
        Box7.isHidden=true
        Label1.isHidden=true
        Label2.isHidden=true
        Label3.isHidden=true
        Label4.isHidden=true
        Label5.isHidden=true
        Label6.isHidden=true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject)
    {
        
        var number=randomDiceRoll()
        updateLabelWithRoll(roll: number)
        rearrangeDie(roll: number)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    func updateLabelWithRoll(roll: Int) {

        let diceScore = String(roll)
        
        if Label1.isHidden {
            Label1.text = diceScore
            Label1.isHidden = false
        }
        else if Label2.isHidden
        {
            Label2.text = diceScore
            Label2.isHidden = false
        }
        else if Label3.isHidden
        {
            Label3.text = diceScore
            Label3.isHidden = false
        }
        else if Label4.isHidden
        {
            Label4.text = diceScore
            Label4.isHidden = false
        }
        else if Label5.isHidden
        {
            Label5.text = diceScore
            Label5.isHidden = false
        }
        else if Label5.isHidden
        {
            Label5.text = diceScore
            Label5.isHidden = false
        }
        else if Label6.isHidden
        {
            Label6.text = diceScore
            Label6.isHidden = false
        }
        else
        {
            Label1.text=diceScore
            Label1.isHidden=false
            Label2.isHidden=true
            Label3.isHidden=true
            Label4.isHidden=true
            Label5.isHidden=true
            Label6.isHidden=true
            
        }
    }

    func rearrangeDie(roll:Int)
    {
        if roll==1
        {
            Box4.isHidden=false
            
            Box1.isHidden=true
            Box2.isHidden=true
            Box3.isHidden=true
            Box5.isHidden=true
            Box6.isHidden=true
            Box7.isHidden=true
        }
        else if roll==2
        {
            Box1.isHidden=false
            Box7.isHidden=false
            
            Box2.isHidden=true
            Box3.isHidden=true
            Box4.isHidden=true
            Box5.isHidden=true
            Box6.isHidden=true
        }
        else if roll==3
        {
            Box1.isHidden=false
            Box7.isHidden=false
            Box4.isHidden=false
            
            Box2.isHidden=true
            Box3.isHidden=true
            Box5.isHidden=true
            Box6.isHidden=true
        }
        else if roll==4
        {
            Box1.isHidden=false
            Box3.isHidden=false
            Box5.isHidden=false
            Box7.isHidden=false
            
            Box2.isHidden=true
            Box4.isHidden=true
            Box6.isHidden=true

        }
        else if roll==5
        {
            Box1.isHidden=false
            Box3.isHidden=false
            Box5.isHidden=false
            Box7.isHidden=false
            Box4.isHidden=false
            
            Box2.isHidden=true
            Box6.isHidden=true
            
        }
        else
        {
            Box1.isHidden=false
            Box3.isHidden=false
            Box5.isHidden=false
            Box7.isHidden=false
            Box2.isHidden=false
            Box6.isHidden=false
            
            Box4.isHidden=true
        }
    }

}
