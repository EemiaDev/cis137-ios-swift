/*:
 Homework 2
 
 Name: Aimee Jin
 
 Date: August 30, 2026
 */

import UIKit

let names = ["Anna": 25, "Alex": 36, "Brian": 47, "Jack": 16, "Bob": 69]
let greetings = ["Hello", "Hi", "Good morning", "Good afternoon", "Good evening"]

for (name, age) in names {
    let randomIndex = Int.random(in: 0..<5)
    print("\(greetings[randomIndex]), \(name)! Happy \(age)th birthday!")
    switch age {
    case 0..<18:
        print("You are still a child.")
    case 18...25:
        print("You are a young adult.")
    case 26...65:
        print("You are an adult.")
    default:
        print("You are a senior.")
    }
}
