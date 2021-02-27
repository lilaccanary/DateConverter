//
//  ViewController.swift
//  DateConverter
//
//  Created by Olka on 27.02.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var insertDate: UITextField!
    @IBOutlet weak var convertedDateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        insertDate.delegate = self
    }
    
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField == insertDate {
            if insertDate.text?.count == 2 || insertDate.text?.count == 5 {
                if !(string == "") {
                    insertDate.text = insertDate.text! + "."
                }
            }
            return !(textField.text!.count > 9 && string.count > range.length)
        } else {
            return true
        }
    }
    
    
    @IBAction func convertDatePressed(_ sender: UIButton) {
        if let _ = insertDate.text, insertDate.text!.count > 9 {
            let convert = Convertor(insertDate.text!)
            convertedDateLabel.text = convert.convertDate()
        } 
    }
    
}

