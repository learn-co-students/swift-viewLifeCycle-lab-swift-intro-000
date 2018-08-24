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
        getLabel().forEach{ label in
            label.isHidden = true
        }
        getView().forEach{ view in
            view.isHidden = true
        }
    }
    
    @IBOutlet weak var dieOne: UIView!
    
    @IBOutlet weak var dieTwo: UIView!
    
    @IBOutlet weak var dieThree: UIView!
    
    @IBOutlet weak var dieFour: UIView!
    
    @IBOutlet weak var dieFive: UIView!
    
    @IBOutlet weak var dieSix: UIView!
    
    @IBOutlet weak var dieSeven: UIView!
    
    @IBOutlet weak var scoreOne: UILabel!
    
    @IBOutlet weak var scoreTwo: UILabel!
    
    @IBOutlet weak var scoreThree: UILabel!
    
    @IBOutlet weak var scoreFour: UILabel!
    
    @IBOutlet weak var scoreFive: UILabel!
    
    @IBOutlet weak var scoreSix: UILabel!
    
    func getLabel() -> Array<UILabel>{
        return [scoreOne, scoreTwo, scoreThree, scoreFour, scoreFive, scoreSix]
    }
    
    func getView() -> Array<UIView>{
        return [dieOne, dieTwo, dieThree, dieFour, dieFive, dieSix, dieSeven]
    }
    
    var clickCount = 0
    @IBAction func rollDie(_ sender: Any) {
        clickCount = clickCount + 1
        if clickCount == 7 {
            endGame()
            return
        }
        getView().forEach { view in
            view.isHidden = true
        }
        let rolledDie = randomDiceRoll()
        updateLabelWithRoll(roll: rolledDie, count: clickCount)
        updateViewsWithRoll(roll: rolledDie)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func endGame(){
        let alert = UIAlertController(title: "No more rolls", message: "You have completed all 6 rolls please restart...", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Restart", style: .default, handler: { action in
            self.clickCount = 0
            self.getLabel().forEach{ label in
                label.isHidden = true
            }
            self.getView().forEach{ view in
                view.isHidden = true
            }
        }))
        
        self.present(alert, animated: true)
    }
    
    
    func updateLabelWithRoll(roll: Int, count : Int) {
        getLabel()[count - 1].text = String(roll)
        getLabel()[count - 1].isHidden = false
    }
    
    func updateViewsWithRoll(roll: Int) {
        var currentView = getView()[..<(roll + 1)]
        if roll == 1 {
            currentView.remove(at: 0)
        }
        else if roll == 2 || roll == 4 || roll == 6 {
            currentView.remove(at: 1)
        } else {
            currentView.removeLast()
        }
        
        currentView.forEach { view in
            view.isHidden = false
        }
    }
}
