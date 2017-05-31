import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        clearViews()
        clearLabels()
    }

    func clearViews() {
        let allViews = allDieViews() + allScoreBoxes()
        for view in allViews {
            view.isHidden = true
        }
    }

    func clearLabels() {
        let allLabels = allScoreLabels()
        for label in allLabels {
            label.isHidden = true
        }
    }

    @IBOutlet weak var dieTopLeft: UIView!
    @IBOutlet weak var dieMiddleLeft: UIView!
    @IBOutlet weak var dieBottomLeft: UIView!
    @IBOutlet weak var dieMiddle: UIView!
    @IBOutlet weak var dieTopRight: UIView!
    @IBOutlet weak var dieMiddleRight: UIView!
    @IBOutlet weak var dieBottomRight: UIView!

    @IBOutlet weak var scoreBox1: UIView!
    @IBOutlet weak var scoreBox2: UIView!
    @IBOutlet weak var scoreBox3: UIView!
    @IBOutlet weak var scoreBox4: UIView!
    @IBOutlet weak var scoreBox5: UIView!
    @IBOutlet weak var scoreBox6: UIView!

    @IBOutlet weak var scoreLabel1: UILabel!
    @IBOutlet weak var scoreLabel2: UILabel!
    @IBOutlet weak var scoreLabel3: UILabel!
    @IBOutlet weak var scoreLabel4: UILabel!
    @IBOutlet weak var scoreLabel5: UILabel!
    @IBOutlet weak var scoreLabel6: UILabel!

    @IBAction func dieRoll(_ sender: Any) {
        let roll = randomDiceRoll()
        showRoll(roll)
        updateBoxAndLabel(String(roll))
    }

    func showRoll(_ roll: Int) {
        clearDieViews()
        switch roll {
        case 1:
            show1()
        case 2:
            show2()
        case 3:
            show3()
        case 4:
            show4()
        case 5:
            show5()
        case 6:
            show6()
        default:
            break
        }
    }

    func updateBoxAndLabel(_ result: String) {
        if scoreLabel1.isHidden {
            scoreLabel1.text = result
            scoreLabel1.isHidden = false
            scoreBox1.isHidden = false
        } else if scoreLabel2.isHidden {
            scoreLabel2.text = result
            scoreLabel2.isHidden = false
            scoreBox2.isHidden = false
        } else if scoreLabel3.isHidden {
            scoreLabel3.text = result
            scoreLabel3.isHidden = false
            scoreBox3.isHidden = false
        } else if scoreLabel4.isHidden {
            scoreLabel4.text = result
            scoreLabel4.isHidden = false
            scoreBox4.isHidden = false
        } else if scoreLabel5.isHidden {
            scoreLabel5.text = result
            scoreLabel5.isHidden = false
            scoreBox5.isHidden = false
        } else if scoreLabel6.isHidden {
            scoreLabel6.text = result
            scoreLabel6.isHidden = false
            scoreBox6.isHidden = false
        }
    }

    func show1() {
        dieMiddle.isHidden = false
    }

    func show2() {
        dieTopLeft.isHidden = false
        dieBottomRight.isHidden = false
    }

    func show3() {
        dieTopLeft.isHidden = false
        dieMiddle.isHidden = false
        dieBottomRight.isHidden = false
    }

    func show4() {
        dieTopLeft.isHidden = false
        dieBottomLeft.isHidden = false
        dieTopRight.isHidden = false
        dieBottomRight.isHidden = false
    }

    func show5() {
        dieTopLeft.isHidden = false
        dieBottomLeft.isHidden = false
        dieMiddle.isHidden = false
        dieTopRight.isHidden = false
        dieBottomRight.isHidden = false
    }

    func show6() {
        dieTopLeft.isHidden = false
        dieMiddleLeft.isHidden = false
        dieBottomLeft.isHidden = false
        dieTopRight.isHidden = false
        dieMiddleRight.isHidden = false
        dieBottomRight.isHidden = false
    }

    func clearDieViews() {
        let dieViews = allDieViews()
        for view in dieViews {
            view.isHidden = true
        }
    }

    func allDieViews() -> Array<UIView> {
        return [
            dieTopLeft, dieMiddleLeft, dieBottomLeft, dieMiddle,
            dieTopRight, dieMiddleRight, dieBottomRight
        ]
    }

    func allScoreBoxes() -> Array<UIView> {
        return [
            scoreBox1, scoreBox2, scoreBox3,
            scoreBox4, scoreBox5, scoreBox6
        ]
    }

    func allScoreLabels() -> Array<UILabel> {
        return [
            scoreLabel1, scoreLabel2, scoreLabel3,
            scoreLabel4, scoreLabel5, scoreLabel6
        ]
    }

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
}
