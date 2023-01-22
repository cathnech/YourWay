//
//  Story.swift
//  YourWay
//
//  Created by Екатерина Нечаева on 23.01.2023.
//

import Foundation

struct Story {
    let storyText: String
    let choice1: String
    let choice2: String
    
    init(storyText: String, choice1: String, choice2: String) {
        self.storyText = storyText
        self.choice1 = choice1
        self.choice2 = choice2
    }
}
