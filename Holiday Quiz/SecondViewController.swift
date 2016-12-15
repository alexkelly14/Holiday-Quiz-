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
    var questions = [Question]()
    var correctAnswer = 0
    var answer = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetColors()
        loadQuestions()
        chooseQuestion()
    }
    
    func displayAnswer() {
        if(answer0Button.tag == 0){
            buttonsOff()
            if correctAnswer == 0
            {
                answer0Button.backgroundColor = UIColor.green
            }
            else if correctAnswer == 1
            {
                answer1Button.backgroundColor = UIColor.green
            }
            else if correctAnswer == 2
            {
                answer2Button.backgroundColor = UIColor.green
            }
            else if correctAnswer == 3
            {
                answer3Button.backgroundColor = UIColor.green
            }
            if correctAnswer == answer {
                score += 1
            }
        }
    }
    
    @IBAction func onAnswer0Tapped(_ sender: UIButton) {
        answer = 0
        if (correctAnswer == answer)
        {
            score += 0
        }
        displayAnswer()
    }
    
    @IBAction func onAnwer1Tapped(_ sender: UIButton) {
        answer = 1
        if (correctAnswer == answer)
        {
            score += 0
        }

        displayAnswer()
    }
    
    @IBAction func onAnswer2Tapped(_ sender: UIButton) {
        answer = 2
        if (correctAnswer == answer)
        {
            score += 0
        }

        displayAnswer()
    }
    
    @IBAction func onAnswer3Tapped(_ sender: UIButton) {
        answer = 3
        if (correctAnswer == answer)
        {
            score += 0
        }

        displayAnswer()
    }
    
    @IBAction func onNextTapped(_ sender: UIButton) {
        if questions.count > 0
        {
        chooseQuestion()
        }
        else
        {
            let message = "Score"
            let alert = UIAlertController(title: message, message:"\(score)", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "reset", style: .default) {
                (action) -> Void in self.score = 0
                self.loadQuestions()
            }
            alert.addAction(alertAction)
            present(alert, animated: true, completion: nil)
        }
        resetColors()
    }
    
    func buttonsOff() {
        answer0Button.tag = 1
        answer1Button.tag = 1
        answer2Button.tag = 1
        answer3Button.tag = 1
        answer0Button.backgroundColor = UIColor.red
        answer1Button.backgroundColor = UIColor.red
        answer2Button.backgroundColor = UIColor.red
        answer3Button.backgroundColor = UIColor.red
    }
    
    func loadQuestions() {
        var question = Question()
        
        // question 0
        question.question = "What is Scrooge's first name?"
        question.answer0 = "Jim"
        question.answer1 = "Ebinezer"
        question.answer2 = "Nicholas"
        question.answer3 = "Tiny Tim"
        question.correct = 1
        questions.append(question)
        
        // question 1
        question = Question()
        question.question = "What is the Grinch's Dog named?"
        question.answer0 = "Max"
        question.answer1 = "Mark"
        question.answer2 = "Mat"
        question.answer3 = "Sam"
        question.correct = 0
        questions.append(question)
        
        //question 2 
        question = Question()
        question.question = "Buddy the Elf traveled through everything EXECPT"
        question.answer0 = "Lincoln Tunnel"
        question.answer1 = "Candy Cane Forest"
        question.answer2 = "Swirly Twirly Gumdrops"
        question.answer3 = "Marshallow Meadow"
        question.correct = 3
        questions.append(question)
        
        //question 3
        question = Question()
        question.question = "What American President banned Christmas Trees from the White House?"
        question.answer0 = "FDR"
        question.answer1 = "Lincoln"
        question.answer2 = "Washington"
        question.answer3 = "Theodore Roosevelt"
        question.correct = 3
        questions.append(question)
        
        //question 4
        question = Question()
        question.question = "In the Polar Express movie, what is the First Gift of Christmas?"
        question.answer0 = "Santa Hat"
        question.answer1 = "Doll House"
        question.answer2 = "Bell"
        question.answer3 = "Puppy"
        question.correct = 2
        questions.append(question)
   }
    
    func chooseQuestion() {
        
        let index = Int(arc4random_uniform(UInt32(questions.count)))
        let question = questions[index]
        questions.remove(at: index)
        questionLabel.text = question.question
        answer0Button.setTitle(question.answer0, for: UIControlState.normal)
        answer1Button.setTitle(question.answer1, for: UIControlState.normal)
        answer2Button.setTitle(question.answer2, for: UIControlState.normal)
        answer3Button.setTitle(question.answer3, for: UIControlState.normal)
        correctAnswer = question.correct
    }
    
    func resetColors(){
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "xmas tree2")!)
        answer0Button.backgroundColor = UIColor.clear
        answer1Button.backgroundColor = UIColor.clear
        answer2Button.backgroundColor = UIColor.clear
        answer3Button.backgroundColor = UIColor.clear
        answer0Button.tag = 0
        answer1Button.tag = 0
        answer2Button.tag = 0
        answer3Button.tag = 0
    }
}

