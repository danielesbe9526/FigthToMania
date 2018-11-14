//
//  SingUpVerification.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/6/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//


import UIKit
import Firebase

class SingUpVerification: UIViewController {
    
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
        
        self.view.addSubview(tittle)
        self.view.addSubview(descriptionLabel)
        self.view.addSubview(imputFightCry)
        self.view.addSubview(underLine)
        self.view.addSubview(descriptionInput)
        self.view.addSubview(continueButton)
        
        tittle.frame            = CGRect(x: 50, y: 150, width: self.view.frame.width-100, height: 60)
        descriptionLabel.frame  = CGRect(x: self.view.frame.width/2-125, y: 250, width:250 , height: 50)
        imputFightCry.frame     = CGRect(x: 50, y: 350, width: self.view.frame.width , height: 20)
        imputFightCry.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        underLine.frame         = CGRect(x: 50, y: 370, width: self.view.frame.width-100, height: 2)
        descriptionInput.frame  = CGRect(x: self.view.frame.width/2-125, y: 380, width: 250, height: 50)
        continueButton.frame    = CGRect(x: 50, y: 600, width: 300, height: 40)
    }
    
    let  tittle : UILabel = {
        let text            = NSLocalizedString("Perfect! you are a fighter in Fightomania", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 18)
        label.numberOfLines = 3
        return label
    }()
    
    
    let  descriptionLabel : UILabel = {
        let text            = NSLocalizedString("Now pick up a Battle Cry for provoke your opponents", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6100706336)
        label.font          = UIFont(name: "Lato-Regular", size: 12)
        label.numberOfLines = 2
        return label
    }()
    

    
    let imputFightCry : UITextField = {
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
    
    let underLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
    let  descriptionInput : UILabel = {
        let text            = NSLocalizedString("Need inspiration? You can complete later in profile section", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6100706336)
        label.font          = UIFont(name: "Lato-Regular", size: 12)
        label.numberOfLines = 2
        return label
    }()

    
    let continueButton : UIButton = {
        let text = NSLocalizedString("Fight Now", comment: "")
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
    
    
    func showAlertView(tittle : String , message : String){
        let alerController = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        let cancel  = UIAlertAction(title: "Cancel", style: .destructive) { (action) -> Void in
        }
        alerController.addAction(cancel)
        self.navigationController?.present(alerController, animated: true, completion: nil)
    }
    
    @objc func nextView() {
        
        guard let fightCry = imputFightCry.text else {
            return
        }
        
        if (  fightCry.count > 20 ) {
            showAlertView(tittle: "error", message: "Invalid string , the email, must be more than 10 characters and less than 50")
        }
        else {
            let viewModel =  LoginViewModel()
            viewModel.getUserModel()
            
            let modalViewController = LoginView()
            modalViewController.modalPresentationStyle = .overCurrentContext
            present(modalViewController, animated: true, completion: nil)
            
           showAlertView(tittle: "ok", message: "successFull 2")
            
           
        }
    }
}
