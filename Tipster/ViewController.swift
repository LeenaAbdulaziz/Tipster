//
//  ViewController.swift
//  Tipster
//
//  Created by Linah abdulaziz on 01/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalamountLabel: UILabel!
    
    @IBOutlet weak var tip5Label: UILabel!
    @IBOutlet weak var totaltip5amountLabel: UILabel!
    @IBOutlet weak var grouptip5Label: UILabel!
   
    
    @IBOutlet weak var tip10Label: UILabel!
    @IBOutlet weak var totaltip10amountLabel: UILabel!
    @IBOutlet weak var grouptip10Label: UILabel!
    
    @IBOutlet weak var tip15Label: UILabel!
    @IBOutlet weak var totaltip15amountLabel: UILabel!
    @IBOutlet weak var grouptip15Label: UILabel!
    
    
    @IBOutlet weak var tipsliderLabel: UISlider!
    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var groupSlider: UISlider!
    
    
    var tip = 5
    var groupsize = 1
    
    var starter = true

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipsliderLabel.value = 5
        groupSlider.value = 1
        totalamountLabel.text = "0"
        
        let groupSize = Int(groupSlider.value)
        
        groupLabel.text = ("GroupSize:\(groupSize)")
    }
    
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        
//        if (starter){
//            totalamountLabel.text! += " "
//          
//        }
            
        switch sender.titleLabel?.text {
            
        case "1":
            totalamountLabel.text! += "1"
            calculatetips()
            break
            
        case "2":
            totalamountLabel.text! += "2"
            calculatetips()
            
            break
            
        case "3":
            totalamountLabel.text! += "3"
            calculatetips()
            
            break
            
        case "4":
            totalamountLabel.text! += "4"
            calculatetips()
            
            break
            
        case "5":
            totalamountLabel.text! += "5"
            calculatetips()
         
            break
            
        case "6":
            totalamountLabel.text! += "6"
            calculatetips()
            break
            
        case "7":
            totalamountLabel.text! += "7"
            calculatetips()
           
            break
        
        case "8":
            totalamountLabel.text! += "8"
            calculatetips()
           
            break
        
        case "9":
            totalamountLabel.text! += "9"
            calculatetips()
           
            break
            
        case "0":
            totalamountLabel.text! += "0"
            calculatetips()
            
            break
            
        case ".":
            totalamountLabel.text! += "."
            calculatetips()
           
            break
            
        case "c":
            totalamountLabel.text! = ""
            calculatetips()
           
            break
            
        default:
            break
            
        }
    }
    
    
    @IBAction func tipslider(_ sender: UISlider) {
        tip = Int((sender.value * 100)/100)
        calculatetips()
          
       }
       @IBAction func groupslider(_ sender: UISlider) {
           groupLabel.text="Group Size:\(Int(sender.value))"
           groupsize = Int(sender.value)
           
           calculatetips()
         
         
       }
    
    
    func calculatetips(){
     
        let tippersentage =  (tip * 100)/100
        
        var totalAmount = 0.0
        
        totalAmount = Double(totalamountLabel.text ?? "0") ?? 0.0
        
       tip5Label.text =  "\(tip)%"
        tip10Label.text = "\(tip+5)%"
        tip15Label.text = "\(tip+10)%"
        

        let tip5persetage : Double = Double(tip5Label.text!.replacingOccurrences(of: "%", with: "%")) ?? 5.0
        let tip10persetage : Double = Double(tip10Label.text!.replacingOccurrences(of: "%", with: ""))!
        let tip15persetage : Double = Double(tip15Label.text!.replacingOccurrences(of: "%", with: ""))!
        
        totaltip5amountLabel.text = String(format: "%.2f", totalAmount * tip5persetage/100)
        totaltip10amountLabel.text = String(format: "%.2f", totalAmount * tip10persetage/100)
        totaltip15amountLabel.text = String(format: "%.2f", totalAmount * tip15persetage/100)
        
        grouptip5Label.text = String (format: "%.2f", (Double(groupsize) * Double( totaltip5amountLabel.text!)! + totalAmount))
        grouptip10Label.text = String(format: "%.2f", (Double (groupsize) * Double(totaltip10amountLabel.text!)! + totalAmount))
        grouptip15Label.text = String (format: "%.2f", (Double (groupsize) * Double(totaltip15amountLabel.text!)! + totalAmount))

        
        
    }
    

}

