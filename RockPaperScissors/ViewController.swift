//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Matyas Perendi on 09/09/2019.
//  Copyright © 2019 Matyas Perendi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //Possible choices the computer can make
    var computersValues = ["Rock","Paper","Scissors"]
    
    func getResult(usersChoice: String){
        
        //We pick a random number between 0 and 2
        let computerPick = Int.random(in: 0 ... 2)
        //Getting the value at computerPick position
        let computersChoice = computersValues[computerPick]
                
        // Getting the result considering the user's and the computer's choices
        if usersChoice == computersChoice {
            result.text = "Computer's choice: \(computersChoice) \n Your choice: \(usersChoice) \n It's a draw! Nobody won this time :)"
            
        }
        else if usersChoice == "Rock" && computersChoice == "Scissors" {
            result.text = "Computer's choice: \(computersChoice) \n Your choice: \(usersChoice) \n Congratulations, you won!"
            
        }
        else if usersChoice == "Paper" && computersChoice == "Rock"{
            result.text = "Computer's choice: \(computersChoice) \n Your choice: \(usersChoice) \n Congratulations, you won!"
            
        }
        else if usersChoice == "Scissors" && computersChoice == "Paper"{
            result.text = "Computer's choice: \(computersChoice) \n Your choice: \(usersChoice) \n Congratulations, you won!"
            
        }
        else {
            result.text = "Computer's choice: \(computersChoice) \n Your choice: \(usersChoice) \n You lost, the Computer won this time!"
            
        }
    }
    
    //Rock button
    @IBAction func rockClicked(_ sender: UIButton) {
        getResult(usersChoice: "Rock")
    }
    //Scissors button
    @IBAction func scissorsClicked(_ sender: UIButton) {
        getResult(usersChoice: "Scissors")
    }
    //Paper button
    @IBAction func paperClicked(_ sender: UIButton) {
        getResult(usersChoice: "Paper")
    }
    //Text area
    @IBOutlet weak var result: UITextView!
    
    }

    
    





