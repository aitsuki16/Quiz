//
//  ViewController.swift
//  Quiz
//
//  Created by USER on 2020/04/16.
//  Copyright © 2020 Igarashi Ai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var LabelQuestion: UILabel!
    
    @IBOutlet weak var Button1: UIButton!
    
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    
    @IBOutlet weak var LabelEnd: UILabel!
    
    @IBOutlet weak var Next: UIButton!
    var correctAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomQuestions()
        
        hide()
    }
    
    func randomQuestions() {
        var randomNumber = arc4random() % 4
        randomNumber += 1
        //let randomNumber = Int.random(in: 0...4)
        
        switch randomNumber {
        case 1:
            LabelQuestion.text = "(Shukran) شكرا"
            Button1.setTitle("Welcome", for: UIControl.State.normal)
            Button2.setTitle("Thanks", for: UIControl.State.normal)
            Button3.setTitle("Hello", for: UIControl.State.normal)
            Button4.setTitle("See you soon", for: UIControl.State.normal)
            
            correctAnswer = "2"
        break
        case 2:
        LabelQuestion.text = "(Sabahou al khair) صباح الخير"
        Button1.setTitle("Good afternoon", for: UIControl.State.normal)
        Button2.setTitle("Goodnight", for: UIControl.State.normal)
        Button3.setTitle("Goodbye", for: UIControl.State.normal)
        Button4.setTitle("Good Morning", for: UIControl.State.normal)
        
        correctAnswer = "4"
        break
        case 3:
        LabelQuestion.text = "(tusbih alaa khayr) تصبح على خير"
        Button1.setTitle("Good night", for: UIControl.State.normal)
        Button2.setTitle("Hello", for: UIControl.State.normal)
        Button3.setTitle("How are you?", for: UIControl.State.normal)
        Button4.setTitle("Good afternoon", for: UIControl.State.normal)
        
        correctAnswer = "1"
        break
        case 4:
        LabelQuestion.text = "(kayf halak?) كيف حالك؟"
        Button1.setTitle("Where are you?", for: UIControl.State.normal)
        Button2.setTitle("How are you?", for: UIControl.State.normal)
        Button3.setTitle("What is your name?", for: UIControl.State.normal)
        Button4.setTitle("What time is it now?", for: UIControl.State.normal)
        
        correctAnswer = "2"
        break
        case 5:
        LabelQuestion.text = "(asalamu alaikoum) السلام عليكم"
        Button1.setTitle("Nice to meet you", for: UIControl.State.normal)
        Button2.setTitle("Thank you", for: UIControl.State.normal)
        Button3.setTitle("How is the weather", for: UIControl.State.normal)
        Button4.setTitle("hello", for: UIControl.State.normal)
        
        correctAnswer = "4"
        break
            
        default:
            break
        }
    }
    
    func hide () {
        LabelEnd.isHidden = true
        Next.isHidden = true
    }
    
    func unHide () {
        LabelEnd.isHidden = false
        Next.isHidden = false
    }
    
    @IBAction func Button1Action(_ sender: Any) {
        unHide()
        if (correctAnswer == "1") {
            LabelEnd.text = ("You are correct")
    } else {
        LabelEnd.text = ("You are wrong!!")


    }
    }
    @IBAction func Button2Action(_ sender: Any) {
        unHide()
        if (correctAnswer == "2") {
             LabelEnd.text = ("You are correct!!")

        } else {
            LabelEnd.text = ("You are wrong!!")


        }
    }
    @IBAction func Button3Action(_ sender: Any) {
        unHide()
        if (correctAnswer == "3") {
             LabelEnd.text = ("You are correct!!")

         } else {
             LabelEnd.text = ("You are wrong!!")


         }
    }
    @IBAction func Button4Action(_ sender: Any) {
        unHide()
        if (correctAnswer == "4") {
            LabelEnd.text = ("You are correct!!")

         } else {
            LabelEnd.text = ("You are wrong!!")

         }
    }
    
    @IBAction func Next(_ sender: Any) {
        randomQuestions()
        hide()
    }
}

