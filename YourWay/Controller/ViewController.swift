//
//  ViewController.swift
//  YourWay
//
//  Created by Екатерина Нечаева on 22.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var StoryText: UILabel!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    
    let stories = [
        Story(storyText: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
    Story(storyText: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
    Story(storyText: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")]
    
    var nextStory = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StoryText.text = stories[nextStory].storyText
        choiceOne.setTitle(stories[nextStory].choice1, for: .normal)
        choiceTwo.setTitle(stories[nextStory].choice2, for: .normal)

    }

    
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.currentTitle == stories[nextStory].choice1{
            nextStory+=1
        }else{
            nextStory+=2
        }
    }
    
    func updateUI(){
        StoryText.text = stories[nextStory].storyText
        choiceOne.setTitle(stories[nextStory].choice1, for: .normal)
        choiceTwo.setTitle(stories[nextStory].choice2, for: .normal)
    }
}

