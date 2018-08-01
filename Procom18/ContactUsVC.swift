//
//  ContactUsVC.swift
//  Procom18
//
//  Created by User on 28/07/2018.
//  Copyright © 2018 Sohaib. All rights reserved.
//

import UIKit

class ContactUsVC: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var messageTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTextFields()
        
    }
    
    func initializeTextFields() {
        
        nameTextField.delegate = self
        nameTextField.keyboardType = UIKeyboardType.alphabet
        
        emailTextField.delegate = self
        emailTextField.keyboardType = UIKeyboardType.emailAddress
        
        subjectTextField.delegate = self
        subjectTextField.keyboardType = UIKeyboardType.asciiCapable
        
        messageTextView.delegate = self
        messageTextView.keyboardType = UIKeyboardType.default
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if string.count == 0 {
            return true
        }
        
        let currentText = textField.text ?? ""
        let prospectiveText = (currentText as NSString).replacingCharacters(in: range, with: string)
        
        switch textField {
            case nameTextField:
                return prospectiveText.contains("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz") && prospectiveText.count <= 15
            
        case emailTextField:
            return prospectiveText.contains("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_.@-") && prospectiveText.count <= 15
            
        case subjectTextField:
            return prospectiveText.contains("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789:-.") && prospectiveText.count <= 15
            
        default:
            return true
        }
        
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text.count == 0 {
            print("Message should NOT be EMPTY!")
            return true
        }
        else {
            return true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        textView.resignFirstResponder()
        return true
    }
    
}
