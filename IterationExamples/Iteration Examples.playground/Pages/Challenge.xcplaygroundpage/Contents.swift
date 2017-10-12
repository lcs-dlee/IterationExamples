//: [Previous](@previous)
//: # Challenge
//: Extend the code you wrote on the following page to generate this image:
//:
//: ![challenge](challenge.png "Challenge")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Below this line, try combining a loop and four statements that draw lines to generate the goal

// Line width
canvas.defaultLineWidth = 1

// Draw the line for the pattern
for y in stride(from: 10, through: 400, by: 50) {
    
    y
    
    
    // Draw line
    canvas.drawLine(fromX: 0, fromY: 0, toX: 300, toY: 0)
    canvas.drawLine(fromX: 20, fromY: 0, toX: 300, toY:20)
    canvas.drawLine(fromX: 40, fromY: 0, toX: 300, toY:40)
    canvas.drawLine(fromX: 60, fromY: 0, toX: 300, toY:60)
    canvas.drawLine(fromX: 80, fromY: 0, toX: 300, toY:80)
    canvas.drawLine(fromX: 100, fromY: 0, toX: 300, toY:100)
    canvas.drawLine(fromX: 120, fromY: 0, toX: 300, toY:120)
    canvas.drawLine(fromX: 140, fromY: 0, toX: 300, toY:140)
    canvas.drawLine(fromX: 160, fromY: 0, toX: 300, toY:160)
    canvas.drawLine(fromX: 180, fromY: 0, toX: 300, toY:180)
    canvas.drawLine(fromX: 200, fromY: 0, toX: 300, toY:200)
    canvas.drawLine(fromX: 220, fromY: 0, toX: 300, toY:220)
    canvas.drawLine(fromX: 240, fromY: 0, toX: 300, toY:240)
    canvas.drawLine(fromX: 260, fromY: 0, toX: 300, toY:260)
    canvas.drawLine(fromX: 280, fromY: 0, toX: 300, toY:280)
    canvas.drawLine(fromX: 300, fromY: 0, toX: 300, toY:300)
    
    // Draw line
    canvas.rotate(by: 90)
    canvas.translate(byX: 0, byY: -300)
    
    canvas
    
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
