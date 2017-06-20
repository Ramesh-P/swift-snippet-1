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
    
    
    
    
    
    
}
