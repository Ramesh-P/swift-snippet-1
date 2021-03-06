//
//  LanguageGuide.swift
//  swift-snippet-1
//
//  Created by Ramesh Parthasarathy on 6/15/17.
//  Copyright © 2017 Ramesh Parthasarathy. All rights reserved.
//

import UIKit

class LanguageGuide: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Initialize
        let id: Int = 12
        runExamples(id)
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Class Functions
    func runExamples(_ id: Int) {
        
        switch id {
        case 1...3:
            collectionTypes(id)
        case 4...10:
            controlFlow(id)
        case 11:
            functions(id)
        case 12:
            enumerations(id)
        default:
            break
        }
    }
}
