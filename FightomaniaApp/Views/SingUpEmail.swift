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
        self.view.addSubview(underLineImputEmail)
        self.view.addSubview(continueButton)
        
        emailAddress.frame          = CGRect(x: 0, y: 150, width: self.view.frame.width, height: 20)
        descriptionLabel.frame      = CGRect(x: self.view.frame.width/2-100, y: 200, width:200 , height: 50)
        emailLabel.frame            = CGRect(x: 50, y: 350, width: self.view.frame.width, height: 20)
        imputfEmail.frame           = CGRect(x: 50, y: 380, width: self.view.frame.width, height: 20)
        imputfEmail.textColor       = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        underLineImputEmail.frame   = CGRect(x: 50, y: 400, width: self.view.frame.width-100, height: 2)
        continueButton.frame        = CGRect(x: 50, y: 600, width: 300, height: 40)
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
        let text            = NSLocalizedString("We will send you a confirmation link for complete the registration", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6100706336)
        label.font          = UIFont(name: "Lato-Regular", size: 12)
        label.numberOfLines = 3
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
        let colorText = NSAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
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
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
    let continueButton : UIButton = {
        let text = NSLocalizedString("Log in", comment: "")
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

    func showAlertView(tittle: String, message : String) {
        let alerController = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        let cancel  = UIAlertAction(title: "Cancel", style: .default) { (action) -> Void in
        }
        alerController.addAction(cancel)
        self.navigationController?.present(alerController, animated: true, completion: nil)
    }
    
    
    @objc func register() {
        guard let email = imputfEmail.text else {return}
        
        if ( email.count > 10 && email.count < 50 ) {
            let viewModel = LoginViewModel()
            viewModel.setDictionaryWhitStrings(whit: email, andKey: 5)
            
            self.navigationController?.pushViewController(SingUpVerification(), animated: true)

            let modalViewController = CustomAlertViewRegistryConfirmation()
            modalViewController.modalPresentationStyle = .overCurrentContext
            present(modalViewController, animated: true, completion: nil)
          
        
            
            
          
        }
            //TODO : - Validate special characters
        else {
            showAlertView(tittle: "error", message: "Invalid string , the email, must be more than 10 characters and less than 50")
        }
     
    }
    
    func presentNextViewController () {
        self.navigationController?.pushViewController(SingUpVerification(), animated: true)
    }
    
}
