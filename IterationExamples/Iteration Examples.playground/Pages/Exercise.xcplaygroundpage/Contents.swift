//: [Previous](@previous) / [Next](@next)
//: # Exercise
//: Say that we want to create an output image like this on a 300x300 canvas:
//:
//: ![example](example.png "Example")
//:
//: At first glance this may seem like a complicated image.
//:
//: However, if we break down, or *decompose* the problem, into smaller, more easily completed tasks, it's not so bad.
//:
//: Take a look at this storyboard:
//:
//:![storyboard](storyboard.png "Storyboard")
//:
//: Do you think you could combine:
//: * a single loop
//: * a single statement that draws a line
//:
//: ... to create this image?  Give it a try!
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 500, height: 500)

//draw loops

//change the horizontal position
for x in stride(from: 50, to: 500, by: 100){
    
    //change the vertical position
    for y in stride(from: 550, to: 0, by: -100){
        
        //change the size
        for d in stride(from: 100, to: 20, by: -20){
            
//fill colour
            
     //choose the colour for this set up of circles
        let hue = random(from: 0, toButNotIncluding: 361)
        let saturation = random(from: 0, toButNotIncluding: 101)
        let brightness = random(from: 0, toButNotIncluding: 101)
            canvas.fillColor = Color(hue: hue, saturation: saturation, brightness: brightness, alpha: 100)
        canvas.drawEllipse(centreX: x, centreY: y, width: d, height: d, borderWidth: 1)}
}
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
