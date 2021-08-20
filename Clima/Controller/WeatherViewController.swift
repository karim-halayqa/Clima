//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchtextField.delegate = self
    }

    @IBOutlet weak var searchtextField: UITextField!
    
    
    @IBAction func searchPressed(_ sender: UIButton) {
        searchtextField.endEditing(true)
        print(searchtextField.text!)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(searchtextField.text!)
        searchtextField.endEditing(true)
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if searchtextField.text != "" {
            return true
        }
        else {
            textField.placeholder = " Type Something "
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        searchtextField.text = ""
    }
    
}

