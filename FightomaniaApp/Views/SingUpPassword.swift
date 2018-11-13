//
//  SingUpPassword.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/6/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//

import UIKit

class SingUpPassword: UIViewController {
    
    var iconClick = true
    
    let defaultColor : UIColor = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
        setUpView()
        self.navigationController?.navigationBar.tintColor = defaultColor
        
        let hideKeyboard: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(hideKeyboard)
    }
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func setUpView()  {
        let show = UITapGestureRecognizer(target: self, action: #selector(showOrHidePassword))

        self.view.addSubview(tittle)
        self.view.addSubview(descriptionLabel)
        self.view.addSubview(nameLabel)
        self.view.addSubview(imputPassword)
        self.view.addSubview(underLineImputPassword)
        self.view.addSubview(showLabel)
        self.view.addSubview(continueButton)
        
        showLabel.isUserInteractionEnabled = true
        showLabel.addGestureRecognizer(show)

        
        tittle.frame                    = CGRect(x: 0, y: 150, width: self.view.frame.width, height: 20)
        descriptionLabel.frame          = CGRect(x: self.view.frame.width/2-100, y: 180, width:200 , height: 50)
        nameLabel.frame                 = CGRect(x: 50, y: 350, width: self.view.frame.width , height: 20)
        imputPassword.frame             = CGRect(x: 50, y: 380, width: self.view.frame.width-100, height: 20)
        imputPassword.textColor         = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        showLabel.frame                 = CGRect(x: self.view.frame.width-80, y: 420, width: 50, height: 20)
        underLineImputPassword.frame    = CGRect(x: 50, y: 400, width: self.view.frame.width-100, height: 2)
        continueButton.frame            = CGRect(x: 50, y: 600, width: 300, height: 40)
    }
    
    let  tittle : UILabel = {
        let text            = NSLocalizedString("Set a password", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 18)
        return label
    }()
    
    let  descriptionLabel : UILabel = {
        let text            = NSLocalizedString("Your password must be at least 8 characters long, include a capital letter, a number and a symbol", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6100706336)
        label.font          = UIFont(name: "Lato-Regular", size: 12)
        label.numberOfLines = 3
        return label
    }()
    
    let  nameLabel : UILabel = {
        let text            = NSLocalizedString("Password", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 14)
        return label
    }()
    
    let imputPassword : UITextField = {
        let text = UITextField()
        let colorText = NSAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        text.attributedText = colorText
        text.font                       = UIFont(name: "Lato-Regular", size: 14)
        text.autocorrectionType         = UITextAutocorrectionType.no
        text.keyboardType               = UIKeyboardType.alphabet
        text.clearButtonMode            = UITextField.ViewMode.whileEditing
        text.contentVerticalAlignment   = UIControl.ContentVerticalAlignment.center
        text.autocapitalizationType     = .none
        text.isSecureTextEntry          = true
        return text
    }()
    
 
    
    let showLabel : UILabel = {
        let text            = NSLocalizedString("show", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textColor     = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        label.font          = UIFont(name: "Lato-Regular", size: 14)
        return label
    }()
    
    let underLineImputPassword : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
    
    
    let continueButton : UIButton = {
        let text = NSLocalizedString("Continue", comment: "")
        let button = UIButton()
        button.backgroundColor      = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        button.layer.cornerRadius   = 20
        button.layer.borderColor    = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.layer.borderWidth    = 1.0
        button.clipsToBounds        = true
        button.setTitle(text, for: .normal)
        button.titleLabel?.font     = UIFont(name: "Lato-Regular", size: 14)
        button.addTarget(self, action: #selector(nextView), for: .touchUpInside)
        return button
    }()
    
    @objc func showOrHidePassword (){
        if(iconClick == true) {
            imputPassword.isSecureTextEntry = false
        } else {
            imputPassword.isSecureTextEntry = true
        }
        
        iconClick = !iconClick
    }
    
    @objc func nextView() {
        guard let password = imputPassword.text else {return}

        let viewModel = LoginViewModel()
        viewModel.setDictionaryWhitStrings(whit: password, andKey: 4)
        
        self.navigationController?.pushViewController(SingUpEmail(), animated: true)
        
    }
    
    
}
