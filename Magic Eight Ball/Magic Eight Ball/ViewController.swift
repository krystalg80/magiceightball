//
//  ViewController.swift
//  Magic Eight Ball
//
//  Created by Krystal Galdamez on 1/25/23.
//

import UIKit

class ViewController: UIViewController {
   // MARK: - Properties
    
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    
    // ... rest of code
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
        print("Shake it like a polaroid picture!")
        // 1
        let randomIndex = Int.random(in: 0..<answers.count)
        // 2
        answerLabel.text = answers[randomIndex]
        }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        generateAnswer()
        let randomIndex = Int.random(in: 0..<answers.count)
        answerLabel.text = answers[randomIndex]
    }
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<answers.count)
        answerLabel.text = answers[randomIndex]
    }
    
}
