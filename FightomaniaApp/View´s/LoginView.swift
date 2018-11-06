//
//  LoginView.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/4/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//

import UIKit

class LoginView: UIViewController {
    
    let defaultColor : UIColor = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
   
       
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = defaultColor
        
        let hideKeyboard: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(hideKeyboard)

        setUpView()

    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    func setUpView()  {
        let tap = UITapGestureRecognizer(target: self, action: #selector(SingUp))

        self.view.addSubview(welcomeLabel)
        self.view.addSubview(signUpLabel)
        self.view.addSubview(logoImage)
        self.view.addSubview(fighterNameLabel)
        self.view.addSubview(imputfighterName)
        self.view.addSubview(passwordLabel)
        self.view.addSubview(imputPassword)
        self.view.addSubview(staySignedInLabel)
        self.view.addSubview(staySignedButton)
        self.view.addSubview(logInButton)
        self.view.addSubview(forgetPasswordLabel)
        
        signUpLabel.isUserInteractionEnabled = true
        signUpLabel.addGestureRecognizer(tap)
        
        welcomeLabel.frame          = CGRect(x: 0, y: 50, width: self.view.frame.width, height: 20)
        signUpLabel.frame           = CGRect(x: 0, y: 75, width: self.view.frame.width, height: 20)
        logoImage.frame             = CGRect(x: 40, y: 150, width: self.view.frame.width-80, height: 170)
        fighterNameLabel.frame      = CGRect(x: 50, y: 370, width: self.view.frame.width, height: 20)
        imputfighterName.frame      = CGRect(x: 50, y: 400, width: self.view.frame.width, height: 20)
        passwordLabel.frame         = CGRect(x: 50, y: 430, width: self.view.frame.width, height: 20)
        imputPassword.frame         = CGRect(x: 50, y: 450, width: self.view.frame.width, height: 20)
        staySignedInLabel.frame     = CGRect(x: self.view.frame.width/2+10, y: 530, width: 200, height: 15)
        staySignedButton.frame      = CGRect(x: self.view.frame.width/2-60, y: 520, width: 40, height: 10)
        logInButton.frame           = CGRect(x: 50, y: 600, width: 300, height: 40)
        forgetPasswordLabel.frame   = CGRect(x: 0, y: 670, width: self.view.frame.width, height: 20)
//        signUpLabel.toggleUnderline(NSUnderlineStyle.single)
    }
    
    let  welcomeLabel : UILabel = {
        let text            = NSLocalizedString("Want to become a new fighter?", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = UIColor(red: 217/255, green: 0/255, blue: 154/255, alpha: 1)
        label.font          = UIFont(name: "Lato-Regular", size: 18)
        return label
    }()
    
    
    let  signUpLabel : UILabel = {
        
        let text            = NSLocalizedString("Sign Up Here", comment: "")
        var label           = UILabel()
//        label.text          = text
        label.textAlignment = .center
        label.textColor     = UIColor(red: 217/255, green: 0/255, blue: 154/255, alpha: 1)
        label.font          = UIFont(name: "Lato-Regular", size: 18)
        
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue]
        let underlineAttributedString = NSAttributedString(string: text, attributes: underlineAttribute)
        label.attributedText = underlineAttributedString
        return label
    }()
    
    
    let logoImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "login_pillow_header.jpg")
        return image
    }()
    
    let  fighterNameLabel : UILabel = {
        let text            = NSLocalizedString("Fighter Name", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 14)
        return label
    }()
    
    let imputfighterName : UITextField = {
        let text = UITextField()
        text.placeholder                = "Enter Fighter Name"
        text.font                       = UIFont(name: "Lato-Regular", size: 14)
        text.autocorrectionType         = UITextAutocorrectionType.no
        text.keyboardType               = UIKeyboardType.alphabet
        text.clearButtonMode            = UITextField.ViewMode.whileEditing
        text.contentVerticalAlignment   = UIControl.ContentVerticalAlignment.center
        text.autocapitalizationType     = .none
        let colorText = NSAttributedString(string: "Enter your mail", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        text.attributedText = colorText
        return text
    }()
    
    let  passwordLabel : UILabel = {
        let text = NSLocalizedString("Password", comment: "")
        var label = UILabel()
        label.text          = text
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 14)
        return label
    }()
    
    let imputPassword : UITextField = {
        let text = UITextField()
        text.placeholder                = "Enter your Password"
        text.font                       = UIFont(name: "Lato-Regular", size: 14)
        text.autocorrectionType         = UITextAutocorrectionType.no
        text.keyboardType               = UIKeyboardType.alphabet
        text.clearButtonMode            = UITextField.ViewMode.whileEditing
        text.contentVerticalAlignment   = UIControl.ContentVerticalAlignment.center
        text.autocapitalizationType     = .none
        let colorText = NSAttributedString(string: "Enter your Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        text.attributedText = colorText
        return text
    }()
    
    let  staySignedInLabel : UILabel = {
        let text            = NSLocalizedString("Stay Signed In", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textColor     = UIColor(red: 85/255, green: 204/255, blue: 255/255, alpha: 1)
        label.font          = UIFont(name: "Lato-Regular", size: 12)
        return label
    }()
    
    let staySignedButton : UISwitch = {
       let signedSwitch             = UISwitch()
        signedSwitch.onTintColor    = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        return signedSwitch
    }()
    
    let logInButton : UIButton = {
        let text = NSLocalizedString("Log In", comment: "")
        let button = UIButton()
        button.backgroundColor      = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        button.layer.cornerRadius   = 20
        button.layer.borderColor    = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.layer.borderWidth    = 1.0
        button.clipsToBounds        = true
        button.setTitle(text, for: .normal)
        button.titleLabel?.font     =  UIFont(name: "Lato-Regular", size: 12)

        button.addTarget(self, action: #selector(register), for: .touchUpInside)
        return button
    }()
    
    let  forgetPasswordLabel : UILabel = {
        let text = NSLocalizedString("I don´t remember my password", comment: "")
        var label = UILabel()
        label.text          = text
        label.textColor     = UIColor(red: 85/255, green: 204/255, blue: 255/255, alpha: 1)
        label.font          = UIFont(name: "Lato-Regular", size: 12)
        label.textAlignment = .center
        return label
    }()
    
   @objc func register() {
    
    }
    
    @objc func SingUp() {
    self.navigationController?.pushViewController(SingUpName(), animated: true)
    }
}
