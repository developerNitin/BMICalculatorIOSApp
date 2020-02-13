//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Nitin Birdi on 25/12/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiResult: String?
    var adviceShow: String?
    var backGroundColor: UIColor?
    
    @IBOutlet weak var resultViewToUser: UILabel!
    @IBOutlet weak var Comment: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        resultViewToUser.text = bmiResult
        view.backgroundColor = backGroundColor
        Comment.text = adviceShow
        
    }

    @IBAction func backToCalculation(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
