//
//  SingUpName.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/6/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//

import UIKit

class SingUpName: UIViewController {
    
    let defaultColor : UIColor = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
        setUpView()
        
        let removeKeyBoard: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(removeKeyBoard)
        
        self.navigationController?.navigationBar.tintColor = defaultColor
    }
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func setUpView()  {
        self.view.addSubview(tittle)
        self.view.addSubview(nameLabel)
        self.view.addSubview(imputfName)
        self.view.addSubview(underLineImputfName)
        self.view.addSubview(lastNameLabel)
        self.view.addSubview(imputLastName)
        self.view.addSubview(underLineImputLastName)
        self.view.addSubview(termsAndPrivacyLabel)
        self.view.addSubview(continueButton)
        
        tittle.frame                    = CGRect(x: 0, y: 150, width: self.view.frame.width, height: 20)
        nameLabel.frame                 = CGRect(x: 50, y: 300, width: self.view.frame.width , height: 20)
        imputfName.frame                = CGRect(x: 50, y: 330, width: self.view.frame.width, height: 20)
        underLineImputfName.frame       = CGRect(x: 50, y: 350, width: self.view.frame.width-100, height: 2)
        lastNameLabel.frame             = CGRect(x: 50, y: 370, width: self.view.frame.width, height: 20)
        imputLastName.frame             = CGRect(x: 50, y: 400, width: self.view.frame.width, height: 20)
        underLineImputLastName.frame    = CGRect(x: 50, y: 420, width: self.view.frame.width-100, height: 2)
        termsAndPrivacyLabel.frame      = CGRect(x: self.view.frame.width/2-125, y: 500, width:250 , height: 50)
        continueButton.frame            = CGRect(x: 50, y: 600, width: 300, height: 40)
    }
    
    let  tittle : UILabel = {
        let text            = NSLocalizedString("What is your name?", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 18)
        return label
    }()
    

    
    let  nameLabel : UILabel = {
        let text            = NSLocalizedString("First Name", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 14)
        return label
    }()
    
    let imputfName : UITextField = {
        let text = UITextField()
        let colorText = NSAttributedString(string: ".", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        text.attributedText = colorText
        text.font                       = UIFont(name: "Lato-Regular", size: 14)
        text.autocorrectionType         = UITextAutocorrectionType.no
        text.keyboardType               = UIKeyboardType.alphabet
        text.clearButtonMode            = UITextField.ViewMode.whileEditing
        text.contentVerticalAlignment   = UIControl.ContentVerticalAlignment.center
        text.autocapitalizationType     = .none
        return text
    }()
    
    let underLineImputfName : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
    
    
    let  lastNameLabel : UILabel = {
        let text            = NSLocalizedString("Last Name", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 14)
        return label
    }()
    
    let imputLastName: UITextField = {
        let text = UITextField()
        let colorText = NSAttributedString(string: ".", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        text.attributedText = colorText
        text.font                       = UIFont(name: "Lato-Regular", size: 14)
        text.autocorrectionType         = UITextAutocorrectionType.no
        text.keyboardType               = UIKeyboardType.alphabet
        text.clearButtonMode            = UITextField.ViewMode.whileEditing
        text.contentVerticalAlignment   = UIControl.ContentVerticalAlignment.center
        text.autocapitalizationType     = .none
        return text
    }()
    
    let underLineImputLastName : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
  
    
    let  termsAndPrivacyLabel : UILabel = {
//        let blackLabel = NSAttributedString(string: "Sign Up & Accept", attributes: [NSAttributedString.Key.foregroundColor : UIColor.blue])
        let blackLabel = "Sign Up & Accept"
        let termsOfService  = "terms of service"
        let text            = NSLocalizedString("By tapping \(blackLabel). you agree with our \(termsOfService) and Privacy Policity", comment: "")
        
//        let textAttributed = NSAttributedString(string: text)
        var label           = UILabel()
        label.text          = text
//        label.attributedText = textAttributed
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6100706336)
        label.font          = UIFont(name: "Lato-Regular", size: 12)
        label.numberOfLines = 2
        return label
    }()
    
    let continueButton : UIButton = {
        let text = NSLocalizedString("Sign Up & Accept", comment: "")
        let button = UIButton()
        button.backgroundColor      = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        button.layer.cornerRadius   = 20
        button.layer.borderColor    = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.layer.borderWidth    = 1.0
        button.clipsToBounds        = true
        button.setTitle(text, for: .normal)
        button.titleLabel?.font     = UIFont(name: "Lato-Regular", size: 14)
        button.addTarget(self, action: #selector(signUpAccept), for: .touchUpInside)
        return button
    }()
    
    
    @objc func signUpAccept() {

        guard   let userName = imputfName.text,
                let lastName = imputLastName.text
        else {return}
    
        let viewModel = LoginViewModel()
    
        viewModel.setDictionaryWhitStrings(whit: "\(userName) \(lastName)", andKey: 1)
        
    self.navigationController?.pushViewController(SingUpBirthday(), animated: true)
    }
    
}

