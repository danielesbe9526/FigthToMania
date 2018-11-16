//
//  alertViewCustom.swift
//  FightomaniaApp
//
//  Created by Daniel Beltran on 11/13/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//

import UIKit

class alertViewCustom: UIView {
    
    let purpleColor : UIColor = UIColor(red: 217/255, green: 0/255, blue: 10/255, alpha: 1)

    
    enum typeAlertView {
        case forgetPassword
        case validateEmail
    }
    
    func createAlertView (type : typeAlertView) {
        switch type {
        case .forgetPassword:
            forgetPasswordView()
            break
        case .validateEmail:
            break
        }
    }

    func forgetPasswordView() {
        
        let  tittle : UILabel = {
            let text            = NSLocalizedString("Forgot your password?", comment: "")
            let label           = UILabel()
            label.text          = text
            label.textAlignment = .center
            label.textColor     = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
            label.font          = UIFont(name: "Lato-Regular", size: 18)
            return label
        }()
        
        
        let  descriptionLabel : UILabel = {
            let text            = NSLocalizedString("Please,Type your email for resetPassword", comment: "")
            let label           = UILabel()
            label.text          = text
            label.textAlignment = .center
            label.textColor     = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
            label.font          = UIFont(name: "Lato-Regular", size: 12)
            label.numberOfLines = 2
            return label
        }()
        
        let  emailLabel : UILabel = {
            let text            = NSLocalizedString("Email", comment: "")
            let label           = UILabel()
            label.text          = text
            label.textColor     = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
            label.font          = UIFont(name: "Lato-Regular", size: 14)
            return label
        }()
        
        let emailImput : UITextField = {
            let text = UITextField()
            //        text.placeholder                = "Email"
            let colorText = NSAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.purple])
            text.attributedText = colorText
            text.font                       = UIFont(name: "Lato-Regular", size: 14)
            text.autocorrectionType         = UITextAutocorrectionType.no
            text.keyboardType               = UIKeyboardType.alphabet
            text.clearButtonMode            = UITextField.ViewMode.whileEditing
            text.contentVerticalAlignment   = UIControl.ContentVerticalAlignment.center
            text.autocapitalizationType     = .none
            return text
        }()
        
        let underLineImputEmail : UIView = {
            let view = UIView()
            view.backgroundColor = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
            return view
        }()
        
        let resetButton : UIButton = {
            
            let text = NSLocalizedString("Reset Password", comment: "")
            let button = UIButton()
            button.setTitleColor(UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1), for: UIControl.State.normal)
            button.backgroundColor      = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            button.layer.cornerRadius   = 20
            button.layer.borderColor    = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1).cgColor
            button.layer.borderWidth    = 2.0
            button.clipsToBounds        = true
            button.setTitle(text, for: .normal)
            button.titleLabel?.font     = UIFont(name: "Lato-Regular", size: 14)
//            button.addTarget(self, action: #selector(cancelbutton), for: .touchUpInside)
            return button
        }()
        
        
        self.addSubview(tittle)
        self.addSubview(descriptionLabel)
        self.addSubview(emailLabel)
        self.addSubview(emailImput)
        self.addSubview(underLineImputEmail)
        self.addSubview(resetButton)
//        self.textColor =  UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
        
        
        tittle.frame                = CGRect(x: 20, y: 10, width: self.frame.width-20, height: 30)
        descriptionLabel.frame      = CGRect(x: self.frame.width/2-55, y: 50, width: 120, height: 30)
        emailLabel.frame            = CGRect(x: 20, y: 100, width: self.frame.width-20, height: 20)
        emailImput.frame            = CGRect(x: 20, y: 120, width: self.frame.width-20, height: 20)
        underLineImputEmail.frame   = CGRect(x: 20, y: 140, width: self.frame.width-40, height: 1)
        resetButton.frame           = CGRect(x: 20, y: 150, width: self.frame.width-50, height: 40)
    
//        func cancelbutton() {
//            self.dismiss(animated: true, completion: nil)
//        }
//
    
    }
    
}
