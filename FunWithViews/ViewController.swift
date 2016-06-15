//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topLeftView: UIView!
    @IBOutlet weak var topRightView: UIView!
    @IBOutlet weak var middleLeftView: UIView!
    @IBOutlet weak var middleRightView: UIView!
    @IBOutlet weak var bottomLeftView: UIView!
    @IBOutlet weak var bottomRightView: UIView!
    @IBOutlet weak var middleView: UIView!

    @IBOutlet weak var score0: UILabel!
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var score3: UILabel!
    @IBOutlet weak var score4: UILabel!
    @IBOutlet weak var score5: UILabel!

    var rolls = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        hideAllViews()

        for i in 0..<6 {
            scoreLabelForIndex(i).hidden = true
        }
    }

    private func viewForIndex(i: Int) -> UIView {
        switch i {
        case 0: return topLeftView
        case 1: return topRightView
        case 2: return middleLeftView
        case 3: return middleRightView
        case 4: return bottomLeftView
        case 5: return bottomRightView
        case 6: return middleView
        default: assert(false, "Invalid index: \(i)")
        }
    }

    private func scoreLabelForIndex(i: Int) -> UILabel {
        switch i {
        case 0: return score0
        case 1: return score1
        case 2: return score2
        case 3: return score3
        case 4: return score4
        case 5: return score5
        default: assert(false, "Invalid index: \(i)")
        }
    }

    private func hideAllViews() {
        for i in 0...6 {
            viewForIndex(i).hidden = true
        }
    }

    private func viewsForScore(score: Int) -> [UIView] {
        switch score {
        case 1: return [middleView]
        case 2: return [bottomLeftView, topRightView]
        case 3: return [bottomLeftView, middleView, topRightView]
        case 4: return [topLeftView, topRightView, bottomLeftView, bottomRightView]
        case 5: return [topLeftView, topRightView, middleView, bottomLeftView, bottomRightView]
        case 6: return [topLeftView, topRightView, middleLeftView, middleRightView, bottomLeftView, bottomRightView]
        default: assert(false, "Invalid score: \(score)")
        }
    }

    private func rearrangeViews(score: Int) {
        hideAllViews()
        for view in viewsForScore(score) {
            view.hidden = false
        }
    }

    private func updateScoreLabel(score: Int) {
        let scoreLabel = scoreLabelForIndex(rolls % 6)
        scoreLabel.text = "\(score)"
        scoreLabel.hidden = false
    }

    @IBAction func rollDice(sender: AnyObject) {
        let roll = randomDiceRoll()
        updateScoreLabel(roll)
        rearrangeViews(roll)
        rolls += 1
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
}
