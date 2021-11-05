//
//  ViewController.swift
//  numberGuess
//
//  Created by Kaar Martin on 01.10.21.
//

import UIKit

class ViewController: UIViewController {
    var model = Model()
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var solutionLabel: UILabel!
    @IBOutlet weak var guessMeButton: UIButton!
    @IBAction func editingChangeTextField(_ sender: UITextField) {
        
    //guessMeButton.isEnabled = model.isValid(guess: model.compareString(guess:sender.text!))
    //print ("text is now \(sender.text)")
    }
    @IBAction func guessButton(_ sender: Any) {
        
        let guessedNumber = model.compareString(guess:numberTextField.text!)
//TODO: check input for not nill
        let text: String?

        switch model.compare(guess: guessedNumber) {
        case -1:
            text = "Zu klein"
        case 1:
            text = "zu groß"
        default:
            text = "Hurra!!!"
            func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
                print ("nein")
                return true
            }
            
            
        }
        solutionLabel.text = text
        
    }
    
    
    override func viewDidLoad() {
        model.numberToGuess = Int.random(in: 0..<100)
        print("Zu eratene Zahl \(model.numberToGuess)")
        print("Versuche: \(model.countOfTries)")
        super.viewDidLoad()
        
    }


    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print ("nein")
        return false
    }
    
}

