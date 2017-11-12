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
        print("The user Choose Rock")
    }

}

