# Roll the Dice

![Drawing](http://i.imgur.com/NQkEJ7o.jpg?1)

> And what greater might do we possess as human beings than our capacity to question and to learn? -[Ann Druyan](https://en.wikipedia.org/wiki/Ann_Druyan)



## Overview

In this lab, you are going to make an app called DiceRoll that looks like this:

![DiceRoll](http://i.imgur.com/RyoBMXf.png)

## Instructions

This application may _look_ complicated, but it's actually pretty simple. Here's what your app should do:

1. Users should be able to press the button at the bottom of the screen that looks like a die.
2. Pressing that button generates a random number. (Hint: `ViewController` contains a `randomDiceRoll()` method that has already been provided to you.)
3. The black squares on the top half of the screen re-arrange themselves to show how that roll would appear on a die.
4. The results of the last 6 die rolls are shown in the colored boxes in the middle of the screen.
5. Neither black squares in the top half of the screen nor the colored boxes should be shown to the user until they have a value to display.

Sounds tricky! But believe it or not, you already know enough to complete this lab. Here are a few hints to get you started:

1. An Xcode project, complete with tests, has already been created for you. Open up `FunWithViews.xcworkspace` to get started.
2. Views can be _hidden_. You can set a view as hidden in its Attributes Inspector, or you can use this code snippet in any method to hide and then show any view:

    ```swift
    view1.hidden = true   // hides the view
    view2.hidden = false  // shows the view
    ```

    The above code could be called from any method. (For example, you may want to hide the views in the `ViewController`'s `viewDidLoad()` method.)
3. The button's text is just this lovely emoji: 🎲

### How It Looks

Before you get started, here are a couple examples of how your app should look in various states.

First, it should look like this at startup:

![App: Launch](http://i.imgur.com/morQLTm.png?1)

It should look like this after one roll of the die:

![App: Roll 1](http://i.imgur.com/LJOIgWJ.png?1)

And it should look like this after the sixth roll of the dice:

![App: Roll 6](http://i.imgur.com/QM2SZ4x.png?1)

What you do after 6 rolls is up to you. You can clear the screen and start fresh, you can just start filling in the score boxes from the left again, or you can even forbid the user from rolling the dice more than 6 times—it's up to you!

Now get started!

### Getting Started

Well, okay. This is a pretty hard assignment, so we'll give you some hints on the path that you should take to get make this app. But we want you to find this lab to be challenging (and rewarding!), so you're only going to get the bare minimum of instructions for this one.

1. Open up the Xcode project: `FunWithViews.xcworkspace`. The project already contains a basic storyboard and view controller.
2. Open up `Main.storyboard` to start designing your interface.
3. Open up `ViewController.swift` in an Assistant Editor pane.
4. You should first add the seven views representing the dice to the top half of the interface. You can drag these views from the object library onto the Interface Builder canvas, and arrange them as shown in the screenshots above.
5. You should then add the six colored score labels along the middle of the screen. Remember: You can set their background color using the Attributes Inspector.
6. Since you will be interacting with all thirteen of these views, you should configure IB outlets in `ViewController` so that the view controller can interact with them. <kbd>Control</kbd>-drag a connection from each of these thirteen views to `ViewController.swift` to create them.
7. These views should initially be hidden from the user, so you should do some setup in `ViewController`'s `viewDidLoad()` method to hide them initially.
8. The main view already has a button configured at the bottom, but it is not hooked up to anything yet. <kbd>Control</kbd>-drag from the button to `ViewController.swift` to create a new IB action for the button.
9. The dice button's IB action needs to do several things:
	1. It needs to generate a random number from 1 to 6. `ViewController` already has a method, `randomDiceRoll()`, that will generate this random number for you.
	2. It needs to show and hide the appropriate black square views in order to display how that random roll would look on a real die.
	3. It needs to update the score labels with the result of the random roll. You can update score labels with code like this:

```swift
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if labelOne.hidden {
            labelOne.text = diceScore
            labelOne.hidden = false
        } else if labelTwo.hidden {
            labelTwo.text = diceScore
            labelTwo.hidden = false
        } else if labelThree.hidden {
            labelThree.text = diceScore
            labelThree.hidden = false
        }
    
        // .. and so on
    }
```

This is a method called `updateLabelWithRoll(_:)` that takes in an `Int` as an argument called `roll`. In our implementation, we look to see if the various labels (our `UILabel`'s are named `labelOne`, `labelTwo`, etc. in this example) are hidden which will let us know which one we should update with the new score.


The above work should be done in separate methods. For example, you may create a method called `rearrangeDie()` that will show or hide the black squares, and `updateScore()` that will update one of the score labels. Those methods should be called from the die button's IB action method, rather than having all the work done in one place. This is not _necessary_, but it will make your code a bit more organized, and it's a good habit to get into.

That is essentially all you need to do to make this die-rolling app work. Not so bad, huh? You're a bit on your own as far as figuring out exactly how to do all that work goes, but if you get stuck, refer back to previous lessons—they can help you finish up this lab in no time at all.

Good luck!


<p class='util--hide'>View <a href='https://learn.co/lessons/swift-viewLifeCycle-lab'>View LifeCycle Lab</a> on Learn.co and start learning to code for free.</p>
