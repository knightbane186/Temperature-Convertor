//
//  ViewController.swift
//  Convertors
//
//  Created by Denver Lopes on 27/4/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fahrenheitText: UITextField!
    @IBOutlet weak var celciusText: UITextField!
    let numberFormatter = NumberFormatter()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        celciusText.becomeFirstResponder()
        fahrenheitText.becomeFirstResponder()
 

    }
       
    
    @IBAction func editingDidBegin(_ sender: UITextField) {
        fahrenheitText.text = ""
        celciusText.text = ""
        
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
        
        if sender ==  fahrenheitText {
            if let d = numberFormatter.number(from: fahrenheitText.text!) {
                celciusText.text! = String(format: "%.1f", (Double(truncating: d) - 32) * 5 / 9);
            } else {
                celciusText.text = ""
            }
        } else {
            if let d = numberFormatter.number(from: celciusText.text!) {
                fahrenheitText.text = String(format: "%.1f", Double(truncating: d) * 9 / 5 + 32);
            } else {
                fahrenheitText.text = ""
            }
        }
        
        
        
        
    }
    
        
    
    }






