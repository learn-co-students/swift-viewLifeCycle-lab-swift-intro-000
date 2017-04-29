//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
      view1.isHidden = true   // hides the view
      view2.isHidden = true   // hides the view
      view3.isHidden = true   // hides the view
      view4.isHidden = true   // hides the view
      view4.isHidden = true
      view5.isHidden = true
      view6.isHidden = true
      view7.isHidden = true
      
      run1.isHidden = true
      run2.isHidden = true
      run3.isHidden = true
      run4.isHidden = true
      run5.isHidden = true
      run6.isHidden = true
      
      
      
    }
    
 //   @IBAction func dieButtonTapped(_ sender: AnyObject) {
      
        
  //  }
  
  @IBOutlet weak var view1: UIView!
  @IBOutlet weak var view2: UIView!
  @IBOutlet weak var view3: UIView!
  @IBOutlet weak var view4: UIView!
  @IBOutlet weak var view5: UIView!
  @IBOutlet weak var view6: UIView!
  @IBOutlet weak var view7: UIView!

  @IBOutlet weak var run1: UILabel!
  @IBOutlet weak var run2: UILabel!
  @IBOutlet weak var run3: UILabel!
  @IBOutlet weak var run4: UILabel!
  @IBOutlet weak var run5: UILabel!
  @IBOutlet weak var run6: UILabel!
  
  var rol = 0
  @IBAction func diceTapped(_ sender: Any) {
  
    print("Dice Tapped")
    print ("\(rol)")
    
    rol = randomDiceRol()
    
    print ("\(rol)")
    rearrangeDice()
    updateLabelWithRoll(roll: rol)
 
  }
  
    func rearrangeDice(){
      if rol == 1 {
        view4.isHidden = false
        view1.isHidden = true   // hides the view
        view2.isHidden = true   // hides the view
        view3.isHidden = true   // hides the view
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
                      }
      else if rol == 2{
        view1.isHidden = false
        view7.isHidden = false
        view2.isHidden = true   // hides the view
        view3.isHidden = true   // hides the view
        view4.isHidden = true   // hides the view
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        
        

      }
      else if rol == 3{
        view1.isHidden = false
        view4.isHidden = false
        view7.isHidden = false
        view2.isHidden = true   // hides the view
        view3.isHidden = true   // hides the view
        view5.isHidden = true
        view6.isHidden = true
        
       
      }
      else if rol == 4{
        view1.isHidden = false   // hides the view
        view2.isHidden = false   // hides the view
        view3.isHidden = true   // hides the view
        view4.isHidden = true   // hides the view
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = false
        view7.isHidden = false
      }
      else if rol == 5{
        view1.isHidden = false   // hides the view
        view2.isHidden = false   // hides the view
        view3.isHidden = true   // hides the view
        view4.isHidden = false   // hides the view
        view5.isHidden = true
        view6.isHidden = false
        view7.isHidden = false
      }
      else if rol == 6{
        view1.isHidden = false  // hides the view
        view2.isHidden = false   // hides the view
        view3.isHidden = false   // hides the view
        view4.isHidden = true
        view5.isHidden = false
        view6.isHidden = false
        view7.isHidden = false
      }
        
      else {
      view1.isHidden = true   // hides the view
      view2.isHidden = true   // hides the view
      view3.isHidden = true   // hides the view
      view4.isHidden = true   // hides the view
      view4.isHidden = true
      view5.isHidden = true
      view6.isHidden = true
      view7.isHidden = true
      }
    }


  
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRol() -> Int {
        return Int(arc4random_uniform(6) + 1)
  }
  
  func updateLabelWithRoll(roll: Int) {
    
      let diceScore = String(roll)
    
    if run1.isHidden {
      run1.text = diceScore
      run1.isHidden = false
    } else if run2.isHidden {
      run2.text = diceScore
      run2.isHidden = false
    } else if run3.isHidden {
      run3.text = diceScore
      run3.isHidden = false
    } else if run4.isHidden {
      run4.text = diceScore
      run4.isHidden = false
    } else if run5.isHidden {
      run5.text = diceScore
      run5.isHidden = false
    } else if run6.isHidden {
      run6.text = diceScore
      run6.isHidden = false
    }
    else {
      print("Game Again")
      run1.isHidden = true
      run2.isHidden = true
      run3.isHidden = true
      run4.isHidden = true
      run5.isHidden = true
      run6.isHidden = true
      view1.isHidden = true   // hides the view
      view2.isHidden = true   // hides the view
      view3.isHidden = true   // hides the view
      view4.isHidden = true   // hides the view
      view4.isHidden = true
      view5.isHidden = true
      view6.isHidden = true
      view7.isHidden = true
    
    }
  }
}



