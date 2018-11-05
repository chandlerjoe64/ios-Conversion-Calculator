//
//  ConversionCalculatorViewController.swift
//  Conversion Calculator
//
//  Created by Joseph Chandler on 11/4/18.
//  Copyright © 2018 Joseph Chandler. All rights reserved.
//

import UIKit

class ConversionCalculatorViewController: UIViewController {

    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var converterButton: UIButton!
    @IBAction func converterButtonAction(_ sender: Any) {
        showActionSheet()
    }
    
    struct Converters {
        var label: String
        var inputUnit: String
        var outputUnit: String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var converters: [Converters] = [Converters(label: "Fahrenheit to Celcius", inputUnit: "°F", outputUnit: "°C"), Converters(label: "Celcius to Fehrenheit", inputUnit: "°C", outputUnit: "°F"), Converters(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"), Converters(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi") ]
        
        
    }
    
    func showActionSheet() {
        //action sheet
        let actionSheet = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: .actionSheet)
        
        //action sheet options
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let f_c = UIAlertAction(title: "fahrenheit to celcius", style: .default) { action in
            self.activate_f_c()
        }
        let c_f = UIAlertAction(title: "celcius to fahrenheit", style: .default) { action in
            self.activate_c_f()
        }
        let m_k = UIAlertAction(title: "miles to kilometers", style: .default) { action in
            self.activate_m_k()
        }
        let k_m = UIAlertAction(title: "kilometers to miles", style: .default) { action in
            self.activate_k_m()
        }
        
        //add action sheet options to action sheet
        actionSheet.addAction(f_c)
        actionSheet.addAction(c_f)
        actionSheet.addAction(m_k)
        actionSheet.addAction(k_m)
        actionSheet.addAction(cancel)
        
        //present action sheet
        present(actionSheet, animated: true, completion: nil)
        
    }
    
    //functions to activate the various converters
    func activate_f_c() {
        inputDisplay.text = "°F"
        outputDisplay.text = "°C"
    }
    
    func activate_c_f() {
        inputDisplay.text = "°C"
        outputDisplay.text = "°F"
    }
    
    func activate_m_k() {
        inputDisplay.text = "mi"
        outputDisplay.text = "km"
    }
    
    func activate_k_m() {
        inputDisplay.text = "km"
        outputDisplay.text = "mi"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
