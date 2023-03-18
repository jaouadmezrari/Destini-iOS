//
//  Sotry.swift
//  Destini
//
//  Created by Abdeljaouad Mezrari on 30/02/2023.
//  Copyright © 2023 Abdeljaouad Mezrari. All rights reserved.
//

import Foundation

struct Story{
    var id: Int
    var title : String
    var choice1 : String
    var choice2 : String
    var choice1Story :  Int
    var choice2Story :  Int
    
    init(id: Int, title: String, choice1: String, choice2: String, choice1Story: Int, choice2Story: Int) {
        self.id = id
        self.title = title
        self.choice1 = choice1
        self.choice2 = choice2
        self.choice1Story = choice1Story
        self.choice2Story = choice2Story
    }
}
