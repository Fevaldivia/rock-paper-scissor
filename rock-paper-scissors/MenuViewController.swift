//
//  MenuViewController.swift
//  rock-paper-scissors
//
//  Created by Felipe Valdivia on 11/9/17.
//  Copyright © 2017 Felipe Valdivia. All rights reserved.
//

import UIKit

// MARK: Menu View Controller

class MenuViewController: UIViewController {
    
    // MARK: Generate Computer Choice
    // generate a random value between 1 and 3.
    func randomChoice() -> Int {
        let randomValue = 1 + arc4random() % 3
        
        return Int(randomValue)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chooseRock(_ sender: Any) {
        let controller: ResultViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
        controller.computerValue = randomChoice()
        controller.userValue = 1
        
        present(controller, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! ResultViewController
        
        if segue.identifier == "chooseScissor" {
            controller.computerValue = randomChoice()
            controller.userValue = 2
        } else if segue.identifier == "choosePaper"{
            controller.computerValue = randomChoice()
            controller.userValue = 3
        }
       
    }
    
    
    @IBAction func chooseScissor(_ sender: Any) {
        performSegue(withIdentifier: "chooseScissor", sender: self)
        
    }
    
    
    @IBAction func choosePaper(_ sender: Any) {
        performSegue(withIdentifier: "choosePaper", sender: self)
    }
    
    

}

