//
//  Guide+8+Enumerations.swift
//  swift-snippet-1
//
//  Created by Ramesh Parthasarathy on 6/21/17.
//  Copyright © 2017 Ramesh Parthasarathy. All rights reserved.
//

import Foundation

extension LanguageGuide {
    
    func enumerations(_ ex: Int) {
        
        switch ex {
        case 12:
            example_12()
        default:
            break
        }
    }
    
    func example_12() {
        
        /* Enumerations: defines a common type for a group of related values */
        
        // Enumeration Syntax: One line per case
        enum Direction {
            case north
            case south
            case east
            case west
        }
        
        // Enumeration Syntax: Single line for all cases
        enum Color {
            case red, green, blue
        }
        
        // Matching Enumeration Values with a Switch Statement
        // Exhaustive
        let execute1: Bool = false
        let heading = Direction.west
        
        if execute1 {
            switch heading {
            case .east:
                print("You are heading east")
            case .north:
                print("You are heading north")
            case .south:
                print("You are heading south")
            case .west:
                print("You are heading west")
            }
        }
        
        // Non-Exhaustive
        let execute2: Bool = false
        let destination = Direction.north
        
        if execute2 {
            switch destination {
            case .north:
                print("Keep going north")
            default:
                print("You are heading on the wrong direction")
            }
        }
        
        // Associated Values
        enum Trade {
            case buy(String, Int)
            case sell(String, Int)
        }
        
        let execute3: Bool = false
        let stock = Trade.buy("APPL", 100)
        
        if execute3 {
            switch stock {
            case .buy(let ticker, let amount):
                print("You bought \(ticker) for $\(amount)")
            case .sell(let ticker, let amount):
                print("You sold \(ticker) for $\(amount)")
            }
        }
        
        enum Stock {
            case buy(ticker: String)
            case sell(ticker: String)
        }
        
        let execute4: Bool = false
        let trade = Stock.buy(ticker: "APPL")
        
        if execute4 {
            switch trade {
            case .buy(let ticker):
                print("You bought \(ticker)")
            default:
                break
            }
        }
        
        // Raw Values: explicitly assigned raw values
        
        // Raw Values: implicitly assigned raw values
        
        // Initializing from a Raw Value
        
        // Optional Binding
        
        // Recursive Enumerations
        
        
        
        
        
        print("ex-12")
    }
    
    
    
    
}
