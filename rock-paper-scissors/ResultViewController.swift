//
//  ResultViewController.swift
//  rock-paper-scissors
//
//  Created by Felipe Valdivia on 11/11/17.
//  Copyright © 2017 Felipe Valdivia. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var computerValue:Int?
    var userValue:Int?
    
    //Mark: Outlets
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        if userValue == 1 {
            if computerValue == 2 {
                resultLabel.text = "Computer Choose paper and you Choose Rock, you lost!"
            } else if computerValue == 3 {
                resultLabel.text = "Computer choose Scissor and you Choose Rock, you WON!"
            } else if computerValue == 1  {
                resultLabel.text = "You both choose rock is a bet !"
            }
        } else if userValue == 2 {
            if computerValue == 1 {
                resultLabel.text = "Computer choose Rock and you choose scissor, you lost"
            } else if computerValue == 2 {
                resultLabel.text = "Computer Choose scissor and you choose scissor is a bet!"
            } else if computerValue == 3 {
                resultLabel.text = "Computer choose Paper and you choose Scissor you Won ! :)"
            }
        } else if userValue == 3 {
            if computerValue == 1 {
                resultLabel.text = "Computer choose Rock and you choose paper, you WON!"
            } else if computerValue == 2 {
                resultLabel.text = "Computer Choose scissor and you choose Paper you lost!"
            } else if computerValue == 3 {
                resultLabel.text = "Computer choose Paper and you Paper is a bet!"
            }
        }
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     *    dismiss this view controller
     */

    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }



}
