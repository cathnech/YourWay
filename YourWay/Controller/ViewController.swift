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

    var story = StoryBrain()
    
    override func viewDidLoad() {
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        story.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    func updateUI(){
        StoryText.text = story.nextText()
        choiceOne.setTitle(story.nextChoice(1), for: .normal)
        choiceTwo.setTitle(story.nextChoice(2), for: .normal)
    }
}

