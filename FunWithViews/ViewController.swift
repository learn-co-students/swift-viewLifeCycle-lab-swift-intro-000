//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var middleLeft: UIView!
    @IBOutlet weak var middleRight: UIView!
    @IBOutlet weak var middle: UIView!
    @IBOutlet weak var bottomLeft: UIView!
    @IBOutlet weak var bottomRight: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!
    var nextLabel: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetTopHalf()
        resetMiddle()
    }
    
    func resetMiddle(){
        Label1.isHidden = true
        Label2.isHidden = true
        Label3.isHidden = true
        Label4.isHidden = true
        Label5.isHidden = true
        Label6.isHidden = true
    }
    
    func resetTopHalf(){
        topLeft.isHidden = true
        topRight.isHidden = true
        middleLeft.isHidden = true
        middle.isHidden = true
        middleRight.isHidden = true
        bottomLeft.isHidden = true
        bottomRight.isHidden = true
    }
    
    func getLabel() -> UILabel! {
        if(nextLabel > 6){
            resetMiddle()
            nextLabel = 1
        }
        switch(nextLabel){
        case 1:
            return Label1
        case 2:
            return Label2
        case 3:
            return Label3
        case 4:
            return Label4
        case 5:
            return Label5
        case 6:
            return Label6
        default:
            return nil
        }
    }
    
        @IBAction func dieButtonTapped(_ sender: AnyObject) {
        resetTopHalf()
        let label = getLabel()
        nextLabel = nextLabel + 1
        let number = randomDiceRoll()
            
        label?.text = String(number)
        label?.isHidden = false
            
        switch(number){
        case 1:
            middle.isHidden = false
        case 2:
            topLeft.isHidden = false
            bottomRight.isHidden = false
        case 3:
            topLeft.isHidden = false
            middle.isHidden = false
            bottomRight.isHidden = false
        case 4:
            topLeft.isHidden = false
            topRight.isHidden = false
            bottomLeft.isHidden = false
            bottomRight.isHidden = false
        case 5:
            topLeft.isHidden = false
            topRight.isHidden = false
            middle.isHidden = false
            bottomLeft.isHidden = false
            bottomRight.isHidden = false
        case 6:
            topLeft.isHidden = false
            topRight.isHidden = false
            middleLeft.isHidden = false
            middleRight.isHidden = false
            bottomLeft.isHidden = false
            bottomRight.isHidden = false
        default:
            viewDidLoad()
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
