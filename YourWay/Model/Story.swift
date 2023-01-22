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
    let choice1Destination: Int
    let choice2: String
    let choice2Destination: Int
    
    init(storyText: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        self.storyText = storyText
        self.choice1 = choice1
        self.choice1Destination = choice1Destination
        self.choice2 = choice2
        self.choice2Destination = choice2Destination
    }
}
