//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        print(roll)
        updateScore(roll:roll)
        rearrangeDie(roll: roll)
           }
    
    func updateScore(roll:Int){
        
        updateLabelWithRoll(roll: roll)
    }
    func rearrangeDie(roll:Int){
        var views: [UIView] = [UIView]()
        views.append(view1)
        views.append(view2)
        views.append(view3)
        views.append(view4)
        views.append(view5)
        views.append(view6)
        views.append(view7)

        switch roll{
        case 1:
            let shown = [1]
            for (idx, element) in views.enumerated(){
                if shown.contains(idx+1){
                    element.isHidden = false
                }
                else{
                    element.isHidden = true
                    
                }

            }
        case 2:
            let shown = [1,2]
            for (idx, element) in views.enumerated(){
                if shown.contains(idx+1){
                    element.isHidden = false
                }
                else{
                    element.isHidden = true
                    
                }
                
            }
        case 3:
            let shown = [1,2,7]
            for (idx, element) in views.enumerated(){
                if shown.contains(idx+1){
                    element.isHidden = false
                }
                else{
                    element.isHidden = true
                    
                }
                
            }
        case 4:
            let shown = [1,2,3,6]
            for (idx, element) in views.enumerated(){
                if shown.contains(idx+1){
                    element.isHidden = false
                }
                else{
                    element.isHidden = true
                    
                }
                
            }
        case 5:
            let shown = [1,2,3,6,7]
            for (idx, element) in views.enumerated(){
                if shown.contains(idx+1){
                    element.isHidden = false
                }
                else{
                    element.isHidden = true
                    
                }
                
            }
        case 6:
            let shown = [1,2,3,4,5,6]
            for (idx, element) in views.enumerated(){
                if shown.contains(idx+1){
                    element.isHidden = false
                }
                else{
                    element.isHidden = true
                    
                }
                
            }
        default:
            let shown = [Int]()
            for (idx, element) in views.enumerated(){
                if shown.contains(idx+1){
                    element.isHidden = false
                }
                else{
                    element.isHidden = true
                    
                }
                
            }
            
        }
        
        
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if label1.isHidden {
            label1.text = diceScore
            label1.isHidden = false
        } else if label2.isHidden {
            label2.text = diceScore
            label2.isHidden = false
        } else if label3.isHidden {
            label3.text = diceScore
            label3.isHidden = false
        }else if label4.isHidden {
            label4.text = diceScore
            label4.isHidden = false
        }else if label5.isHidden {
            label5.text = diceScore
            label5.isHidden = false
        }else if label6.isHidden {
            label6.text = diceScore
            label6.isHidden = false
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
