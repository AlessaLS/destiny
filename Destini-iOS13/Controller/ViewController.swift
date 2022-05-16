//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
  
    var storyBrain = StoryBrain()
    var currentOption = 0
    var nextStory = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        
       if userChoice == choice1Button.currentTitle! {
           nextStory = storyBrain.getChoiceDestination1(currentOption)
           storyLabel.text = storyBrain.storyNumber(nextStory)
           choice1Button.setTitle(storyBrain.getChoice1(nextStory), for: .normal)
           choice2Button.setTitle(storyBrain.getChoice2(nextStory), for: .normal)

        }else {
            nextStory = storyBrain.getChoiceDestination2(currentOption)
            storyLabel.text = storyBrain.storyNumber(nextStory)
            choice1Button.setTitle(storyBrain.getChoice1(nextStory), for: .normal)
            choice2Button.setTitle(storyBrain.getChoice2(nextStory), for: .normal)
        }
    currentOption = nextStory
    }
   
@objc func updateUI() {
        storyLabel.text = storyBrain.storyNumber(currentOption)

        let choiceSelected1 = storyBrain.getChoice1(currentOption)
        choice1Button.setTitle(choiceSelected1, for: .normal)
        let choiceSelected2 = storyBrain.getChoice2(currentOption)
        choice2Button.setTitle(choiceSelected2, for: .normal)

    }
}
  

