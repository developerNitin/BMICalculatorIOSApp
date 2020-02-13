//
//  calculationBrain.swift
//  BMI Calculator
//
//  Created by Nitin Birdi on 25/12/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct calculationBrain {
    
    //Why we initilize BMI as dataType
    var bmi:BMI?
    
    func getBmiValue() -> String {
        let bmiTo1Decimal = String(format: "%.1f",bmi?.bmivalue ?? "0.0")
        return bmiTo1Decimal
    }
    
    func getAdvice() -> String {
        let adviceS = bmi?.advice ?? "hello"
        return adviceS
    }
    
    func getColor() -> UIColor {
        let cOlOr = bmi?.color ?? UIColor.white
        return cOlOr
    }
    
    mutating func calculateBmi  (height: Float, weight: Float) {
        let resultBMI = weight / (height * height)
        
        if resultBMI < 18.5 {
            bmi = BMI(bmivalue: resultBMI, advice: "Eat more", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if resultBMI < 29.5 {
            bmi = BMI(bmivalue: resultBMI, advice: "Fit", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(bmivalue: resultBMI, advice: "Eat less", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
}
