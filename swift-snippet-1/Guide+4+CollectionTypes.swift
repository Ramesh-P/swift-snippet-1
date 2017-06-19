//
//  Guide+4+CollectionTypes.swift
//  swift-snippet-1
//
//  Created by Ramesh Parthasarathy on 6/18/17.
//  Copyright © 2017 Ramesh Parthasarathy. All rights reserved.
//

import Foundation

extension LanguageGuide {
    
    func collectionTypes(_ ex: Int) {
        
        switch ex {
        case 1:
            example_1()
        default:
            break
        }
    }
    
    func example_1() {
        
        /* Array: ordered collection of values of same type */
        
        // Create an empty array
        let myEmptyArray1: [Int] = []
        let myEmptyArray2: [Int] = [Int]()
        let myEmptyArray3 = [Int]()
        
        // Create an array with default values
        let myDefaultArray1: [Int] = Array(repeatElement(0, count: 2))
        let myDefaultArray2: [String] = Array(repeatElement("none", count: 2))
        
        // Create an array with literal values
        let myLiteralArray1: [Int] = [1, 2, 3]
        let myLiteralArray2: [String] = ["A", "B", "C"]
        
        // Create a copy of an array
        let myArray: [Int] = [1, 2, 3]
        var myArrayCopy = myArray
        //myArrayCopy.append(4)
        
        // Create mutable and immutable arrays
        var myMutableArray = [1, 2, 3]
        let myImmutableArray = [1, 2, 3]
        
        // Add two arrays
        let myArray1: [Int] = [1, 2]
        let myArray2: [Int] = [3, 4]
        var myTwoArrays: [Int] = [Int]()
        myTwoArrays = myArray1 + myArray2
        
        // Add many arrays
        let myArray3: [Int] = [5, 6]
        var myAllArrays: [Int] = [Int]()
        myAllArrays = myArray1 + myArray2 + myArray3
        
        // Work with an array
        var myList: [String] = ["car", "van", "bus"]
        
        // Count number of items in an array
        let count = myList.count
        
        // Check if an array is empty
        //myList = []
        if myList.isEmpty {
            //print("Array is empty")
        } else {
            //print(myList)
        }
        
        // Get a value from an array
        let myFirstItem = myList[0]
        
        // Add value to the end
        myList.append("boat")
        
        // Add value to the start
        myList.insert("train", at: 0)
        
        // Insert a value
        myList.insert("taxi", at: 3)
        
        // Change a value
        myList[3] = "cab"
        
        // Change a range of values
        myList[3...4] = ["taxi", "bike"]
        
        // Delete value from the end
        myList.removeLast()
        
        // Delete any value
        myList.remove(at: 0)
        
        // Delete all values
        myList.removeAll()
        
        // Iterate through an array
        let days = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
        
        // Get values only
        for day in days {
            //print(day)
        }
        
        // Get index and value
        for (index, day) in days.enumerated() {
            //print("Array index for \(day) is \(index)")
        }
        
        // Note: array can also have values of different type
        let myMixedArray: [Any] = [1, "A", 2, "B"]
        var number: Int = Int()
        var letter: String = ""
        
        for item in myMixedArray {
            if let n = item as? Int {
                number += n
            } else if let c = item as? String {
                letter += c
            }
        }
    }
}
