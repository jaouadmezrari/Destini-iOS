//
//  StoryBrain.swift
//  Destini
//
//  Created by Abdeljaouad Mezrari on 30/02/2023.
//  Copyright © 2023 Abdeljaouad Mezrari. All rights reserved.
//

import Foundation


struct StoryBrain{
    var stories : [Story] = [
        Story(id: 0,title: "Story 0", choice1: "Story 1 choice", choice2: "Story 2 choice", choice1Story: 1,   choice2Story: 2),
        Story(id: 1,title: "Story 1", choice1: "Story 3 choice", choice2: "Story 4 choice", choice1Story: 3,   choice2Story: 4),
        Story(id: 2,title: "Story 2", choice1: "Story 5 choice", choice2: "Story 6 choice", choice1Story: 5,   choice2Story: 6),
        Story(id: 3,title: "Story 3", choice1: "Story 7 choice", choice2: "Story 8 choice", choice1Story: 7,   choice2Story: 8),
        Story(id: 4,title: "Story 4", choice1: "Story 9 choice", choice2: "Story 10 choice", choice1Story: 9,   choice2Story: 10),
        Story(id: 5,title: "Story 5", choice1: "Story 2 choice", choice2: "Story 1 choice", choice1Story: 2,   choice2Story: 1),
        Story(id: 6,title: "Story 6", choice1: "Story 3 choice", choice2: "Story 4 choice", choice1Story: 3,   choice2Story: 4),
        Story(id: 7,title: "Story 7", choice1: "Story 5 choice", choice2: "Story 2 choice", choice1Story: 5,   choice2Story: 2),
        Story(id: 8,title: "Story 8", choice1: "Story 1 choice", choice2: "Story 4 choice", choice1Story: 1,   choice2Story: 4),
        Story(id: 9,title: "Story 9", choice1: "Story 0 choice", choice2: "Story 0 choice", choice1Story: 0,   choice2Story: 0),
    ]
    var storyNumber : Int = 0
    
    mutating func nextStory(choice: Int?) -> Story? {
        if choice == nil{
            return stories[0]
        }
        let targetedStoryId = (choice == 1) ? stories[storyNumber].choice1Story : stories[storyNumber].choice2Story
        if stories.indices.contains(targetedStoryId){
            storyNumber = targetedStoryId
            return stories[storyNumber]
        }
        return nil
    }
    
    func getCurrentStory() -> Story{
        return stories[storyNumber]
    }
}
