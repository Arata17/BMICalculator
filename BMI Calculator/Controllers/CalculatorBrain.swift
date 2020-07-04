//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Shakhaidar Miras on 6/18/20.
//
//

import UIKit
struct CalculatorBrain{
    
    var bmi: Bmi?
    
    
    mutating func calculateBMI(height: Float,weight: Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = Bmi(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9{
            bmi = Bmi(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else{
            bmi = Bmi(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? .white
    }
    
    func getBmiValue() -> String{
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }
    
    func getHeight(_ userValue: Float) -> String{
        return String(format: "%.2f", userValue) + "m"
    }
    
    func getWeight(_ userValue: Float) -> String{
        return String(format: "%.0f", userValue) + "kg"
    }
}

