//
//  ViewController.swift
//  Hangman
//
//  Created by Gene Yoo on 10/13/15.
//  Copyright © 2015 cs198-ios. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //hangman figure
    @IBOutlet weak var head: UIView!
    @IBOutlet weak var leftArm: UIView!
    @IBOutlet weak var rightArm: UIView!
    @IBOutlet weak var body: UIView!
    @IBOutlet weak var leftLeg: UIView!
    @IBOutlet weak var rightLeg: UIView!
    
    //button and textfield
    @IBOutlet weak var guessBtn: UIButton!
    @IBOutlet weak var wordView: UIView!
    @IBOutlet weak var completedLetter: UILabel!
    @IBOutlet weak var winOrLoseLabel: UILabel!
    var hangman = Hangman()
    
   
    //actions
    @IBAction func newGame(sender: AnyObject) {
        //newGame btn is pressed
        hangman.start()
    }
    
    @IBAction func enterLetter(sender: AnyObject) {
        //guess btn is pressed
        var btn = sender
        //get the letter Entered
        //toFix: double !!
        var theSelectedLetter : Character = Character(btn.titleLabel!!.text!)
        print(theSelectedLetter)
        hangman.guessLetter(String(theSelectedLetter))
        
//        var isLetterInWord = false
//        var indexCount = 0
//        
        
//        for sss in mysteryWord.characters
//        {
//            print("sss = \(sss)")
//            
//            if sss == theSelectedLetter
//            {
//                isLetterInWord = true
//                
//                //reveal the letter in the view
//                var lbl = mysteryWordView.subviews[indexCount] as!  UILabel
//                lbl.text = (String(theSelectedLetter))
//                
//                print("indexCount = \(indexCount)")
//                
//            }
//            indexCount++
//            
//        }
//        
//        var isMysterySolved = true
//        
//        for l in mysteryWordView.subviews{
//            var label :UILabel = l as! UILabel
//            print("label = \(label)")
//            if label.text == "?"{
//                isMysterySolved = false
//            }
//        }
//        
//        //if no letters left..game over..user wins
//        if isMysterySolved{
//            disableOrEnableAllButtons(false)
//            giveUpBtn.hidden = true
//            mysteryWordArray.removeAtIndex(mysteryWordArray.indexOf(mysteryWord)!)
//            if mysteryWordArray.count == 0{
//                theWordLabel.text = "NO MORE WORDS LEFT! YOU BEAT THE GAME!"
//                newWordBtn.hidden = true
//            }else{
//                showAnswer()
//                theWordLabel.text = "WINNER"
//            }
//        }
//        
//        //user guessed wrong..add a  body part to the gallows
//        if isLetterInWord == false {
//            addBodyPartToGallows()
//        }
        
        
    }
    
    
    
}

