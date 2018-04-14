//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Adam Oakes on 4/13/18.
//  Copyright © 2018 Adam Oakes. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    let converters = [
        Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit:"°C"),
        Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit:"°F"),
        Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit:"km"),
        Converter(label: "kilometers to miles", inputUnit: "km", outputUnit:"mi"),
        ]
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var converterButton: UIButton!
    
    @IBAction func showActionSheet(_ sender: Any) {
        let optionMenu = UIAlertController(title: "", message: "choose converter", preferredStyle: .actionSheet)
        
        for converter in converters {
            let action = UIAlertAction(title: converter.label, style: .default, handler: {
                (alert: UIAlertAction!) -> Void in
                self.inputDisplay.text = converter.inputUnit
                self.outputDisplay.text = converter.outputUnit
            })
            optionMenu.addAction(action)
        }
        
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaultConverter = converters[0]
        inputDisplay.text = defaultConverter.inputUnit
        outputDisplay.text = defaultConverter.outputUnit
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
