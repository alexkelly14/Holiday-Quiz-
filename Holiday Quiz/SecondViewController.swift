//
//  SecondViewController.swift
//  Holiday Quiz
//
//  Created by Alexandra Kelly  on 12/7/16.
//  Copyright © 2016 Alexandra Kelly . All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer0Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    var correctAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "xmas tree2")!)
    }
    
    func chooseQuestion() {
        var questionNumber = arc4random() % 5
        questionNumber += 1
        switch (questionNumber) {
        case 0:
            questionLabel.text = "What is Scrooge's first name?"
            answer0Button.setTitle("Jim", for: UIControlState.normal)
            answer1Button.setTitle("Ebenezer", for: UIControlState.normal)
            answer2Button.setTitle("Nicholas", for: UIControlState.normal)
            answer3Button.setTitle("Tiny Tim", for: UIControlState.normal)
            correctAnswer = "1"
            break
        case 1:
            questionLabel.text = "What is the Grinch's Dog named?"
            answer0Button.setTitle("Max", for: UIControlState.normal)
            answer1Button.setTitle("Mat", for: UIControlState.normal)
            answer2Button.setTitle("Mark", for: UIControlState.normal)
            answer3Button.setTitle("Sam", for: UIControlState.normal)
            correctAnswer = "0"
            break
        case 2:
            questionLabel.text = "Buddy the Elf traveled through everything EXECPT"
            answer0Button.setTitle("Lincoln Tunnel", for: UIControlState.normal)
            answer1Button.setTitle("Candy Cane Forest", for: UIControlState.normal)
            answer2Button.setTitle("Swirly Twirly Gumdrops", for: UIControlState.normal)
            answer3Button.setTitle("Marshmallow Meadow", for: UIControlState.normal)
            correctAnswer = "3"
            break
        case 3:
            questionLabel.text = "What American President banned Christmas Trees from the White House?"
            answer0Button.setTitle("Lincoln", for: UIControlState.normal)
            answer1Button.setTitle("Theodore Roosevelt", for: UIControlState.normal)
            answer2Button.setTitle("FDR", for: UIControlState.normal)
            answer3Button.setTitle("Washington", for: UIControlState.normal)
            correctAnswer = "2"
            break
        case 4:
            questionLabel.text = "In the Polar Express movie, what is the First Gift of Christmas?"
            answer0Button.setTitle("Santa Hat", for: UIControlState.normal)
            answer1Button.setTitle("Puppy", for: UIControlState.normal)
            answer2Button.setTitle("Doll House", for: UIControlState.normal)
            answer3Button.setTitle("A Bell", for: UIControlState.normal)
            correctAnswer = "2"
            break

        default:
            break
        }
    }

}
