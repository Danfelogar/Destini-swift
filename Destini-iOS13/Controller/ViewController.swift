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
    
    var distiniBrain = DistiniBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeState()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        distiniBrain.nextStory(sender.currentTitle!)
        
        Timer.scheduledTimer(timeInterval: 0.2,target: self, selector: #selector(changeState), userInfo: nil ,repeats: false)
    }
    
    @objc func changeState(){
        storyLabel.text = distiniBrain.getTitle()
        choice1Button.setTitle(distiniBrain.getChoiceOne(), for: .normal)
        choice2Button.setTitle(distiniBrain.getChoiceTwo(), for: .normal)
    }
}

