//: [Previous](@previous) / [Next](@next)
//: # Iteration
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: NOTE: Parts of this page are adapted from [The Swift Programming Language Guide - Control Flow](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID120).
/*:
 ## For-In Loops
 ### Basic For-In Loops
 You use the *for-in* loop to iterate over ranges of numbers.
 Here is a simple loop that adds all the numbers from 1 to 4.
 */
var sum = 0
for value in 1...4 {
    sum = sum + value
}
sum         // equals 10 at this point

/*:
 ### Skipping values in a range
 The *stride* function can be combined with a *for-in* loop to move through a range of numbers, while also skipping some values.
 
 This is a *very powerful* concept *(hint, hint)*.
 
 For example, here how to use this type of loop to create a ladder image.
 */
// Create canvas
let canvas = Canvas(width: 300, height: 300)

for x in stride (from: 25, through: 275, by: 50){
    for y in stride (from: 275, through: 25, by: 50){
        canvas.drawLine(fromX: x-10, fromY: y-10, toX: x+10, toY: y+10)
        canvas.drawLine(fromX: x+10, fromY: y-10, toX: x-10, toY: y+10)
    }
}

    

/*:
 ### Counting backwards
 You can use a *for-in* loop with the *stride* function to count backwards as well.
 */

//: **NOTE:** Output will show up in the Debug area.
//:
//: If you don't see this, press **Command-Shift-Y**.
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
