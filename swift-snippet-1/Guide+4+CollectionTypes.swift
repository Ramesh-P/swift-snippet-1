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
        case 2:
            example_2()
        case 3:
            example_3()
        default:
            break
        }
    }
    
    func example_1() {
        
        /* Array: ordered collection of values of same type. Values in an array can repeat */
        
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
    
    func example_2() {
        
        /* Set: unordered collection of distinct values of same type. Values in a set can't repeat */
        
        // Create an empty set
        let myEmptySet = Set<Int>()
        
        // Create a set with literal values
        let myLiteralSet1 = Set<Int>(arrayLiteral: 1, 2, 3)
        let myLiteralSet2: Set = ["A", "B", "C"]
        
        // Create a copy of a set
        let mySet = Set<String>(arrayLiteral: "A", "B", "C")
        var mySetCopy = mySet
        //mySetCopy.insert("D")
        
        // Create mutable and immutable sets
        var myMutableSet = Set<Int>(arrayLiteral: 1, 2, 3)
        let myImmutableSet: Set = [1, 2, 3]
        
        // Work with a set
        var myItems = Set<String>(arrayLiteral: "car", "van", "bus")
        
        // Count number of items in a set
        let count = myItems.count
        
        // Check if a set is empty
        //myItems = []
        if myItems.isEmpty {
            //print("Set is empty")
        } else {
            //print(myItems.count)
        }
        
        // Insert a new value
        myItems.insert("truck")
        
        // Check for a value
        if myItems.contains("car") {
            //print("Car is in my list")
        }
        
        // Remove a value
        myItems.remove("truck")
        
        // Remove first value
        myItems.removeFirst()
        
        // Remove all values
        myItems.removeAll()
        
        // Iterate through a set
        let numbers: Set = [0, 1, 2, 3, 4]
        
        // Unsorted list of values
        for number in numbers {
            //print(number)
        }
        
        // Sorted list of values
        for number in numbers.sorted() {
            //print(number)
        }
        
        // Set operations
        let setA: Set = [1, 2, 3, 4, 5, 6]
        let setB: Set = [1, 3, 5, 7, 9]
        
        // Intersection
        print(setA.intersection(setB).sorted())
        
        // Union
        print(setA.union(setB).sorted())
        
        // Subtract
        print(setA.subtracting(setB).sorted())
        
        // Difference
        print(setA.symmetricDifference(setB).sorted())
        
        let set1: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        let set2: Set = [1, 3, 5, 7, 9]
        let set3: Set = [2, 4, 6, 8]
        let set4: Set = [7, 9, 11]
        
        // Superset
        print(set1.isSuperset(of: set2))
        
        // Subset
        print(set2.isSubset(of: set1))
        
        // Disjoint
        print(set2.isDisjoint(with: set3))
        
        // StrictSuperset
        print(set2.isStrictSuperset(of: set4))
        
        // StrictSubset
        print(set4.isStrictSubset(of: set2))
    }
    
    func example_3() {
        
        /* Dictionary: unordered collection of key, values pairs. All keys must be same type. All values must be same type. Key name must be unique */
        
        // Create an empty dictionary
        let myEmptyDictionary1: [Int : String] = Dictionary()
        let myEmptyDictionary2 = [Int : String]()
        let myEmptyDictionary3: [Int : String] = [:]
        
        // Create a dictionary with literal values
        let myLiteralDictionary1: [Int : String] = [1:"Sun", 2:"Mon", 3:"Tue", 4:"Wed", 5:"Thu", 6:"Fri", 7:"Sat"]
        let myLiteralDictionary2 = [1:"Sun", 2:"Mon", 3:"Tue", 4:"Wed", 5:"Thu", 6:"Fri", 7:"Sat"]
        
        // Create a copy of a dictionary
        let myDictionary: [Int : String] = [40:"John", 30:"Jane"]
        var myDictionaryCopy = myDictionary
        //myDictionaryCopy.updateValue("David", forKey: 10)
        
        // Create mutable and immutable dictionary
        var myMutableDictionary = [1:"one", 2:"two", 3:"three"]
        let myImmutableDictionary = [1:"one", 2:"two", 3:"three"]
        
        // Work with a dictionary
        var coins: [Int : String] = [1:"Penny", 5:"Nickel"]
        
        // Count number of items in a dictionary
        let count = coins.count
        
        // Check if a dictionary is empty
        //coins = [:]
        if coins.isEmpty {
            //print("There are no coins")
        } else {
            //print(coins.count)
        }
        
        // Add a value to a dictionary
        coins[10] = "dime"
        coins.updateValue("quarter", forKey: 25)
        
        // Update a value in a dictionary
        coins[10] = "Dime"
        coins.updateValue("Quarter", forKey: 25)
        
        // Get a value from a dictionary
        if let coin = coins[1] {
            //print(coin)
        }
        
        // Delete a value
        coins[25] = nil
        coins.removeValue(forKey: 10)
        
        // Delete all values
        coins.removeAll()
        
        // Iterate through an array
        let students: [String : String] = ["Boy":"John", "Girl":"Jane"]
        
        // Get key, value pair together
        for student in students {
            //print(student)
        }
        
        // Get key and value seperately
        for (sex, name) in students {
            //print(sex)
            //print(name)
        }
        
        // Get keys
        for sex in students.keys {
            //print(sex)
        }
        
        // Get values
        for name in students.values {
            //print(name)
        }
        
        // Cretae an array of keys and values
        let keysArray = [String](students.keys)
        let valuesArray = [String](students.values)
    }
}
