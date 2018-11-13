//
//  LoginView.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/4/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//

import UIKit
import Firebase

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
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(rememberPasword))

        
        self.view.addSubview(welcomeLabel)
        self.view.addSubview(signUpLabel)
        self.view.addSubview(underLine)
        self.view.addSubview(logoImage)
        self.view.addSubview(fighterNameLabel)
        self.view.addSubview(imputfighterName)
        self.view.addSubview(underLineImputfighterName)
        self.view.addSubview(passwordLabel)
        self.view.addSubview(imputPassword)
        self.view.addSubview(underLineImputPassword)
        self.view.addSubview(logInButton)
        self.view.addSubview(forgetPasswordLabel)
        
        signUpLabel.isUserInteractionEnabled = true
        signUpLabel.addGestureRecognizer(tap)
        
        forgetPasswordLabel.isUserInteractionEnabled = true
        forgetPasswordLabel.addGestureRecognizer(tap2)
        
        welcomeLabel.frame              = CGRect(x: 0, y: 50, width: self.view.frame.width, height: 20)
        signUpLabel.frame               = CGRect(x: 0, y: 75, width: self.view.frame.width, height: 20)
        underLine.frame                 = CGRect(x: 150, y: 100, width: self.view.frame.width-300, height: 2)
        logoImage.frame                 = CGRect(x: 40, y: 150, width: self.view.frame.width-80, height: 170)
        fighterNameLabel.frame          = CGRect(x: 50, y: 370, width: self.view.frame.width, height: 20)
        imputfighterName.frame          = CGRect(x: 50, y: 400, width: self.view.frame.width, height: 20)
        imputfighterName.textColor      = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        underLineImputfighterName.frame = CGRect(x: 50, y: 420, width: self.view.frame.width-100, height: 2)
        passwordLabel.frame             = CGRect(x: 50, y: 450, width: self.view.frame.width, height: 20)
        imputPassword.frame             = CGRect(x: 50, y: 470, width: self.view.frame.width, height: 20)
        imputPassword.textColor         = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        imputPassword.isSecureTextEntry = true
        underLineImputPassword.frame    = CGRect(x: 50, y: 490, width: self.view.frame.width-100, height: 2)
        logInButton.frame               = CGRect(x: 50, y: 600, width: 300, height: 40)
        forgetPasswordLabel.frame       = CGRect(x: 0, y: 670, width: self.view.frame.width, height: 20)
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
        
        let text            = NSLocalizedString("Sign up here", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = UIColor(red: 217/255, green: 0/255, blue: 154/255, alpha: 1)
        label.font          = UIFont(name: "Lato-Regular", size: 18)
        return label
    }()
    
    let underLine : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 217/255, green: 0/255, blue: 154/255, alpha: 1)
        return view
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
        text.placeholder                = ""
        text.font                       = UIFont(name: "Lato-Regular", size: 14)
        text.autocorrectionType         = UITextAutocorrectionType.no
        text.keyboardType               = UIKeyboardType.alphabet
        text.clearButtonMode            = UITextField.ViewMode.whileEditing
        text.contentVerticalAlignment   = UIControl.ContentVerticalAlignment.center
        text.autocapitalizationType     = .none
        let colorText = NSAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        text.attributedText = colorText
        return text
    }()
    
    let underLineImputfighterName : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
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
        text.placeholder                = ""
        text.font                       = UIFont(name: "Lato-Regular", size: 14)
        text.autocorrectionType         = UITextAutocorrectionType.no
        text.keyboardType               = UIKeyboardType.alphabet
        text.clearButtonMode            = UITextField.ViewMode.whileEditing
        text.contentVerticalAlignment   = UIControl.ContentVerticalAlignment.center
        text.autocapitalizationType     = .none
        let colorText = NSAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        text.attributedText = colorText
        return text
    }()
    let underLineImputPassword : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
    let logInButton : UIButton = {
        let text = NSLocalizedString("Log in", comment: "")
        let button = UIButton()
        button.backgroundColor      = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        button.layer.cornerRadius   = 20
        button.layer.borderColor    = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        button.layer.borderWidth    = 1.0
        button.clipsToBounds        = true
        button.setTitle(text, for: .normal)
        button.titleLabel?.font     =  UIFont(name: "Lato-Regular", size: 12)

        button.addTarget(self, action: #selector(logInButtonAction), for: .touchUpInside)
        return button
    }()
    
    let  forgetPasswordLabel : UILabel = {
        let text = NSLocalizedString("I don't remember my password", comment: "")
        var label = UILabel()
        label.text              = text
        label.textColor          = UIColor(red: 85/255, green: 204/255, blue: 255/255, alpha: 1)
        label.font              = UIFont(name: "Lato-Regular", size: 12)
        label.textAlignment       = .center
        return label
    }()
    
   @objc func logInButtonAction() {
    
   guard let email = imputfighterName.text,
    let password = imputPassword.text else {
        let message = NSLocalizedString("please type both spaces, (email and password)", comment: "")
        self.showAlert(With: "error", and: message)
        return
        
    }
    
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in

            if let _ = user?.user {
                
                self.showAlert(With: "succes", and: ":D")
            
            } else {

                self.showAlert(With: "error", and: error!.localizedDescription)
                
            }
        }
    }
    
    @objc func SingUp() {
    self.navigationController?.pushViewController(SingUpName(), animated: true)
    }
    
    func showAlert(With tittle : String , and message: String){
       
        if (self.navigationController != nil) {
            let alerController = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
            let cancel  = UIAlertAction(title: "Cancel", style: .default) { (action) -> Void in
                //            print("Cancel button")
            }
            alerController.addAction(cancel)
            self.navigationController?.present(alerController, animated: true, completion: nil)
        }
        return
    }
    
    @objc func rememberPasword() {
        let modalViewController = CustomAlertView()
        modalViewController.modalPresentationStyle = .overCurrentContext
        present(modalViewController, animated: true, completion: nil)
    }
}


