# Roll The Dice

<img src="http://wp.patheos.com.s3.amazonaws.com/blogs/friendlyatheist/files/2014/06/image006.jpg" alt="Drawing" style="width: 200px;"/>  


> And what greater might do we possess as human beings than our capacity to question and to learn?

## Learning Objectives - The student should be able to..

* Complete this lab which will encompass everything they learned in Unit 4.
* This should be changed to reflect actual words (lol).

## What the student can do at this point 

* Has a general overview of Xcode and is able to create a new project.
* Knows where to locate the testing file within Xcode.
* Knows how to navigate to Interface Builder.
* Knows what a storyboard file is.
* Has a brief overview of what the Object Library is.
* Can drag a View Controller onto the canvas.
* Can locate and drag items from the Object Library.
* Can locate the Attributes Inspector and change the Background color of Views
* They know how to connect the ViewController.swift file and understand it's view life cycle.
* Can hook up IBOutlets and IBActions.

## Outline / Notes

*  The students should be asked to make the following:

![DiceRoll](http://i.imgur.com/RyoBMXf.png?1) 

* Instructions shouldn't be too explicit. I like the idea of the student becoming familiar with dragging and dropping a bunch of elements onto the screen so I came up with this idea. I like the idea of including screenshots of the app so the student can see what the final product looks like.
* They might not be aware that the `View` objects they're making have properties they could mess around with. I think it is a good idea to show them that they could hide/un-hide views with the `hidden` properties inherit to every `UIView` object.

```swift
view1.hidden = true // hides the view
view1.hidden = false // view is no longer hidden
```

* We don't need to go into *too* much detail here with what's going on with this hidden property as they will have yet to see what a `Class` is at this point, so they won't really even know what a property is.
* First they should create the layout in storyboard and drag over the various elements to the `ViewController` file
* When they hit the button, it should simulate a dice roll (1-6). I've included a random number method within the `ViewController`. After doing so, the `View`'s in the top half of the screen should lay themselves out (hide-un/hide) to simulate an actual die representing the random number rolled.
* On top of that, the leftmost label (rainbow color'd) labels should update with that random dice roll `Int` that was generated.
* **OPINION REQUIRED**: Should we add a `UILabel` somewhere on this creen which tallys up the dice rolls? I feel... without it that they might not see a point to the app (although without it it could serve as a forshadowing of a harder lab in the future which simulate a yahtzee game).
* This **lab** will not only have them becoming familiar with working with Interface Builder, but it will also challenge them on creating some sound logic within their ViewController. 
* They should have separate methods perform the tasks they want done. Remind them that a function should do one thing and do that one thing well. They shouldn't have everything sitting in ONE method (the roll die method), they should be calling on other methods within that die roll method. **That being said**, I wonder how explicit I want to be with the students with this... meaning, maybe we nudge them in the right direction (but how?).
* It's possible to include tests here, where we could use [KIF - iOS Functional Testing Framework](https://github.com/kif-framework/KIF/). I've included it with this repo. Thoughts on this?
* I didn't remove the view elements in storyboard, that way.. you can see how I set it up :)
  
![Interface Builder](http://i.imgur.com/R3sI0pa.png?1)


<a href='https://learn.co/lessons/ViewLifeCycleLAB' data-visibility='hidden'>View this lesson on Learn.co</a>
