//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Cuento {
    let storyO: String
    let choice1: String
    let choice2: String
    let choice1Destination: Int
    let choice2Destination: Int
    
    init(sO: String, c1: String, c2: String, c1D: Int, c2D: Int) {
        storyO = sO
        choice1 = c1
        choice2 = c2
        choice1Destination = c1D
        choice2Destination = c2D
        
    }
}

