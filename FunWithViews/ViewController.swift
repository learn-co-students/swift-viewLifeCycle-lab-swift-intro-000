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

    @IBOutlet weak var turn1: UILabel!
    @IBOutlet weak var turn2: UILabel!
    @IBOutlet weak var turn3: UILabel!
    @IBOutlet weak var turn4: UILabel!
    @IBOutlet weak var turn5: UILabel!
    @IBOutlet weak var turn6: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //Make views circular
        view1.layer.cornerRadius = view1.frame.size.height / 2
        view2.layer.cornerRadius = view2.frame.size.height / 2
        view3.layer.cornerRadius = view3.frame.size.height / 2
        view4.layer.cornerRadius = view4.frame.size.height / 2
        view5.layer.cornerRadius = view5.frame.size.height / 2
        view6.layer.cornerRadius = view6.frame.size.height / 2
        view7.layer.cornerRadius = view7.frame.size.height / 2
        
        makeViewsHidden()
        makeTurnsHidden()
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        makeViewsHidden()
        
        //Get a random number
        let number = randomDiceRoll()
        let result = String(number)
        
        switch number {
        case 1:
            view4.isHidden = false
            break
        case 2:
            view1.isHidden = false
            view7.isHidden = false
            break
        case 3:
            view1.isHidden = false
            view4.isHidden = false
            view7.isHidden = false
            break
        case 4:
            view1.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
            break
        case 5:
            view1.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
            break
        case 6:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
            break
        default:
            print("Unknown number")
            break
        }
        
        //Update label with number
        if turn1.isHidden {
            turn1.text = result
            turn1.isHidden = false
        }
        else if turn2.isHidden {
            turn2.text = result
            turn2.isHidden = false
        }
        else if turn3.isHidden {
            turn3.text = result
            turn3.isHidden = false
        }
        else if turn4.isHidden {
            turn4.text = result
            turn4.isHidden = false
        }
        else if turn5.isHidden {
            turn5.text = result
            turn5.isHidden = false
        }
        else if turn6.isHidden {
            turn6.text = result
            turn6.isHidden = false
        }
        else {
          makeTurnsHidden()
          turn()
        }
        
    }
    
    func makeViewsHidden() {
        
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        
    }
    
    func makeTurnsHidden() {
        
        turn1.isHidden = true
        turn2.isHidden = true
        turn3.isHidden = true
        turn4.isHidden = true
        turn5.isHidden = true
        turn6.isHidden = true
        
    }
    
    func turn() {
        
        makeViewsHidden()
        
        //Get a random number
        let number = randomDiceRoll()
        let result = String(number)
        
        switch number {
        case 1:
            view4.isHidden = false
            break
        case 2:
            view1.isHidden = false
            view7.isHidden = false
            break
        case 3:
            view1.isHidden = false
            view4.isHidden = false
            view7.isHidden = false
            break
        case 4:
            view1.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
            break
        case 5:
            view1.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
            break
        case 6:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
            break
        default:
            print("Unknown number")
            break
        }
        
        //Update label with number
        turn1.text = result
        turn1.isHidden = false

    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
