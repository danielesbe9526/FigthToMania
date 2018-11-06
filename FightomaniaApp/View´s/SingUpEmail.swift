//
//  SingUpEmail.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/4/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//

import UIKit

class SingUpEmail: UIViewController {
    
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
        self.view.addSubview(emailAddress)
        self.view.addSubview(descriptionLabel)
        self.view.addSubview(emailLabel)
        self.view.addSubview(imputfEmail)
        self.view.addSubview(continueButton)
        self.view.addSubview(backButton)
        
        emailAddress.frame          = CGRect(x: 200, y: 100, width: 300, height: 20)
        descriptionLabel.frame      = CGRect(x: self.view.frame.width/2-100, y: 150, width: 200, height: 20)
        emailLabel.frame            = CGRect(x: 50, y: 200, width: self.view.frame.width, height: 20)
        imputfEmail.frame           = CGRect(x: 50, y: 250, width: self.view.frame.width, height: 20)
        continueButton.frame        = CGRect(x: 50, y: 400, width: 300, height: 40)
        backButton.frame            = CGRect(x: self.view.frame.width/2-25, y: 500, width: 50, height: 50)
    }
    
    let  emailAddress : UILabel = {
        let text            = NSLocalizedString("What is your email address?", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 18)
        return label
    }()
    
    
    let  descriptionLabel : UILabel = {
        let text            = NSLocalizedString("We will send you a confirmation code for complete the registration", comment: "")
        
        var label           = UILabel()
        label.text          = text
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6100706336)
        label.font          = UIFont(name: "Lato-Regular", size: 12)
        return label
    }()

    let  emailLabel : UILabel = {
        let text            = NSLocalizedString("Email", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 14)
        return label
    }()
    
    let imputfEmail : UITextField = {
        let text = UITextField()
        text.placeholder                = "Email"
        text.font                       = UIFont(name: "Lato-Regular", size: 14)
        text.autocorrectionType         = UITextAutocorrectionType.no
        text.keyboardType               = UIKeyboardType.alphabet
        text.clearButtonMode            = UITextField.ViewMode.whileEditing
        text.contentVerticalAlignment   = UIControl.ContentVerticalAlignment.center
        text.autocapitalizationType     = .none
        text.textColor                  = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        text.tintColor                  = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return text
    }()
    
    let continueButton : UIButton = {
        let text = NSLocalizedString("Log In", comment: "")
        let button = UIButton()
        button.backgroundColor      = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        button.layer.cornerRadius   = 20
        button.layer.borderColor    = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.layer.borderWidth    = 1.0
        button.clipsToBounds        = true
        button.setTitle(text, for: .normal)
        button.titleLabel?.font     = UIFont(name: "Lato-Regular", size: 14)
        button.addTarget(self, action: #selector(register), for: .touchUpInside)
        return button
    }()
    
    let backButton : UIButton = {
        let text = NSLocalizedString("←", comment: "")
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        button.layer.cornerRadius = 25
        button.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.layer.borderWidth = 1.0
        button.clipsToBounds = true
        button.setTitle(text, for: .normal)
        button.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        return button
    }()
    
    @objc func register() {
        // Method called after Button LogIn pressed
    }
    
    @objc func goBack() {
        present(LoginView(), animated: true)
    }
    
}
