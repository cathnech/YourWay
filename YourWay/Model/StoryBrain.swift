//
//  StoryBrain.swift
//  YourWay
//
//  Created by Екатерина Нечаева on 23.01.2023.
//

import Foundation

struct StoryBrain {
    let stories = [
//        Story(storyText: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
//        Story(storyText: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
//        Story(storyText: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
        Story(
            storyText: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
            choice2: "Better ask him if he's a murderer first.", choice2Destination: 1
        ),
        Story(
            storyText: "He nods slowly, unfazed by the question.",
            choice1: "At least he's honest. I'll climb in.", choice1Destination: 2,
            choice2: "Wait, I know how to change a tire.", choice2Destination: 3
        ),
        Story(
            storyText: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choice1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
            choice2: "It's him or me! You take the knife and stab him.", choice2Destination: 4
        ),
        Story(
            storyText: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            storyText: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        Story(
            storyText: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
    
    
    var nextStory = 0
    
    mutating func nextStory(_ userChoice: String){
        if userChoice == stories[nextStory].choice1{
            self.nextStory = stories[nextStory].choice1Destination
        }else{
            self.nextStory = stories[nextStory].choice2Destination
        }
    }
    
    func nextText() -> String{
        print(nextStory)
        return stories[nextStory].storyText
    }
    
    func nextChoice(_ choiceNum: Int) -> String {
        if choiceNum == 1 {
            return stories[nextStory].choice1
        } else {
            return stories[nextStory].choice2
        }
    }
}
