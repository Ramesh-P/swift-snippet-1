//
//  Guide+6+Functions.swift
//  swift-snippet-1
//
//  Created by Ramesh Parthasarathy on 6/20/17.
//  Copyright © 2017 Ramesh Parthasarathy. All rights reserved.
//

import Foundation

extension LanguageGuide {
    
    func functions(_ ex: Int) {
        
        switch ex {
        case 11:
            example_11()
        default:
            break
        }
    }
    
    func example_11() {
        
        /* Defining and Calling Functions */
        
        // Function w/o Parameter, w/o Return
        func greet() {
            print("Hi there!")
        }
        //print(greet())
        
        /* Function Parameters and Return Values */
        
        // Function w/ Parameter, w/o Return
        func greetPerson(name: String) {
            print("Hi \(name)!")
        }
        //print(greetPerson(name: "John"))
        
        // Function w/o Parameter, w/ Return
        func temperature() -> Double {
            let localTemperature: Double = 72
            return localTemperature
        }
        let temp = temperature()
        //print("The local temperature is \(temp) degrees F)")
        
        // Function w/ Parameter, w/ Return
        func birthdayGreetings(name: String) -> String {
            let greeting = "Happy Birthday " + name + "!"
            return greeting
        }
        //print(birthdayGreetings(name: "Jane"))
        
        // Function w/ Multiple Parameters
        func wish(name: String, isBirthday: Bool) {
            if isBirthday {
                print("Happy Birthday \(name)!")
            } else {
                print("Hi \(name)!")
            }
        }
        //print(wish(name: "John", isBirthday: true))
        
        // Function w/ Multiple Returns
        func exponent(number: Int) -> (square: Int, cub: Int) {
            let squared = number * number
            let cubed = squared * number
            return (squared, cubed)
        }
        let result = exponent(number: 4)
        //print("Square = \(result.square) and Cube = \(result.cub)")
        
        // Optional Return
        func storeHours(day: String) -> (start: String, end: String)? {
            var hour: (String, String)?
            switch day {
            case "Mon", "Tue", "Wed", "Thu", "Fri":
                hour = ("10:00 AM", "8:00 PM")
            default:
                break
            }
            return hour
        }
        if let store = storeHours(day: "Sat") {
            //print("We are open between \(store.start) and \(store.end)")
        } else {
            //print("We are closed")
        }
        
        /* Function Argument Labels and Parameter Names */
        
        // Specifying Argument Labels
        func welcome(city hometown: String) {
            print("Hi there from \(hometown)!")
        }
        //print(welcome(city: "New York"))
        
        // Omitting Argument Labels
        func square(_ number: Int) -> Int {
            return number * number
        }
        //print(square(2))
        
        // Default Parameter Values
        func sayHi(name: String? = "stranger") {
            print("Hi \(name!)!")
        }
        //print(sayHi())
        //print(sayHi(name: "Jack"))
        
        // Variadic Parameters
        func bigFrom(numbers: Int...) -> Int {
            var big: Int = 0
            for number in numbers {
                if number > big {
                    big = number
                }
            }
            return big
        }
        //print(bigFrom(numbers: 1, 2, 3, 4, 5))
        //print(bigFrom(numbers: 1, 2, 3))
        
        // In-Out Parameters
        func timesTen(_ number: inout Int) -> Int {
            number = number * 10
            return number
        }
        var number: Int = 7
        //print(timesTen(&number))
        
        /* Function Types */
        
        
        
        
        
        
        
        

    }
    
    
    
    
    
}
