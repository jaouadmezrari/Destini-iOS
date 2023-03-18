//
//  ViewController.swift
//  Destini
//
//  Created by Abdeljaouad Mezrari on 30/02/2023.
//  Copyright © 2023 Abdeljaouad Mezrari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyB = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nextStory : Story = storyB.nextStory(choice: nil)!
        changeTexts(story: nextStory)
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        let currentStory: Story = storyB.getCurrentStory()
        changeTexts(story: storyB.nextStory(choice: (currentStory.choice1 == sender.currentTitle) ? 1 : 2))
    }
    
    func changeTexts(story: Story?){
        if story != nil {
            let story_ : Story = story!
            storyLabel.text = story_.title
            choice1Button.setTitle(story_.choice1, for: .normal)
            choice2Button.setTitle(story_.choice2, for: .normal)
        }

    }
    
}

