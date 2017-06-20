//
//  Guide+5+ControlFlow.swift
//  swift-snippet-1
//
//  Created by Ramesh Parthasarathy on 6/19/17.
//  Copyright © 2017 Ramesh Parthasarathy. All rights reserved.
//

import Foundation

extension LanguageGuide {
    
    func controlFlow(_ ex: Int) {
        
        switch ex {
        case 4:
            example_4()
        case 5:
            example_5()
        case 6:
            example_6()
        case 7:
            example_7()
        case 8:
            example_8()
        case 9:
            example_9()
        case 10:
            example_10()
        default:
            break
        }
    }
    
    func example_4() {
        
        /* For-In: iterate over a sequence */
        
        // Iterate through items of an array
        let names = ["Tom", "Peter", "Mary"]
        for name in names {
            //print(name)
        }
        
        // Iterate through key, value pairs of a dictionary
        let family = ["Tom":"Father", "Mary":"Mother", "Peter":"Son"]
        for (name, relation) in family {
            //print("\(name) is the \(relation)")
        }
        
        // Iterate through inclusive numeric range
        for number in 1...5 {
            //print(number)
        }
        
        // Iterate through non-inclusive numeric range
        for number in 1..<5 {
            //print(number)
        }
        
        // Iterate through inclusive numeric range and skip at intervals
        for odd in stride(from: 1, through: 9, by: 2) {
            //print(odd)
        }
        
        // Iterate through non-inclusive numeric range and skip at intervals
        for even in stride(from: 2, to: 10, by: 2) {
            //print(even)
        }
    }
    
    func example_5() {
        
        /* While: evaluates its condition at the start. Executes until the condition is false */
        
        let days = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
        var index = 0
        let totalDays = 7
        while index < totalDays {
            //print(days[index])
            index += 1
        }
        
        /* Repeat-While: executes at the start. Evaluates its condition at the end. Executes until the condition is false */
        
        let weekdays = 5
        index = 0
        repeat {
            index += 1
            //print(days[index])
        } while index < weekdays
    }
    
    func example_6() {
        
        /* If: executes a set of statements only if that condition is true. */
        
        // If
        var time = 9
        if time < 12 {
            //print("Good morning")
        }
        
        // If-Else
        time = 20
        if time < 12 {
            //print("Good morning")
        } else {
            //print("Goodnight")
        }
        
        // If-ElseIf-Else
        time = 20
        if time < 12 {
            //print("Good morning")
        } else if time >= 12 && time < 16 {
            //print("Good afternoon")
        } else if time >= 16 && time < 20 {
            //print("Good evening")
        } else {
            //print("Goodnight")
        }
    }
    
    func example_7() {
        
        /* Switch: considers a value and compares it against several possible matching patterns and executes codes for the first matched pattern. */
        
        // Simple
        var character1: String = String()
        //character1 = "a"
        
        if !(character1.isEmpty) {
            switch character1 {
            case "a":
                print("First alphabet")
            case "z":
                print("Last alphabet")
            default:
                print("Some other character")
            }
        }
        
        // Compound
        var number1: Int = 0
        //number1 = 4
        
        if number1 != 0 {
            switch number1 {
            case 1, 3, 5, 7, 9:
                print("Odd number")
            case 2, 4, 6, 8:
                print("Even number")
            default:
                break
            }
        }
        
        // Interval Matching
        var number2: Int = 0
        //number2 = 100
        
        if number2 != 0 {
            switch number2 {
            case 1...9:
                print("Single digit number")
            case 10...99:
                print("Double digit number")
            default:
                print("Large number")
            }
        }
        
        // Tuples
        var set1: (Int, Int) = (0, 0)
        //set1 = (1, -1)
        
        if set1 != (0, 0) {
            switch set1 {
            case (0, 1...10):
                print("On the +ve y-axis")
            case (1...10, 0):
                print("on the +ve x-axis")
            case (_, _):
                print("Somewhere on the graph")
            default:
                break
            }
        }
        
        // Value Binding
        let execute1: Bool = false
        
        if execute1 {
            let person = ("Jane", 60)
            switch person {
            case ("John", let age):
                print("John is \(age) years old")
            case ("Jane", let age):
                print("Jane is \(age) years old")
            default:
                break
            }
        }
        
        // Where Clause
        let execute2: Bool = false
        
        if execute2 {
            let name: String = "Jane"
            switch name {
            case (let n) where n == "John":
                print("Hi \(n)!")
            case (let n) where n == "Jane":
                print("Welcome \(n)!")
            default:
                print("Hello!")
            }
        }
    }
    
    func example_8() {
        
        /* Control Transfer Statements */
        
        // continue: tells a loop to stop what it is doing and start again at the beginning of the next iteration through the loop.
        let numbers = "123456789"
        var oddNumber: [Character] = []
        let evenNumbers: [Character] = ["2", "4", "6", "8"]
        
        for number in numbers {
            if evenNumbers.contains(number) {
                continue
            } else {
                oddNumber.append(number)
            }
        }
        //print(oddNumber)
        
        // break: ends execution of an entire control flow statement immediately.
        var calendar: String = String()
        //calendar = "Tue"
        
        switch calendar {
        case "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat":
            print("It's a day")
        case "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec":
            print("It's a month")
        default:
            break
        }
        
        // fallthrough: allows statements to fall through the bottom of each case and into the next one.
        let number: Character = "3"
        let odd: [Character] = ["1", "3", "5", "7"]
        let prime: [Character] = ["2", "3", "5", "7"]
        
        switch number {
        case "1", "2", "3", "4", "5", "6", "7", "8", "9":
            //print("It's an integer")
            fallthrough
        case "o":
            if odd.contains(number) {
                //print("It's an odd number")
            }
            fallthrough
        case "p":
            if prime.contains(number) {
                //print("It's a prime number")
            }
            fallthrough
        default:
            break
        }
    }
    
    func example_9() {
        
        /* Labeled Statements */
        
        let numbers: String = "123456789"
        let find: Character = "6"
        
        findLoop: for number in numbers {
            switch number {
            case let number where number == find:
                break findLoop
            case "1":
                print("one")
            case "2":
                print("two")
            case "3":
                print("three")
            case "4":
                print("four")
            case "5":
                print("five")
            case "6":
                print("six")
            case "7":
                print("seven")
            case "8":
                print("eight")
            case "9":
                print("nine")
            default:
                break
            }
        }
    }
    
    func example_10() {
        
        /* Early Exit: guard statement require that a condition must be true in order for the code after the guard statement to be executed. Also guard statement always has an else clause */
        
        let person: String? = "John"
        
        guard let name = person else {
            //print("Hi there!")
            return
        }
        //print("Hi \(name)!")
    }
}
