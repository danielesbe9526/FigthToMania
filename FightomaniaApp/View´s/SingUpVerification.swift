//
//  SingUpVerification.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/6/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//


import UIKit

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
        self.view.addSubview(tittle2)
        self.view.addSubview(descriptionLabel)
        self.view.addSubview(imput)
        self.view.addSubview(underLine)
        self.view.addSubview(descriptionInput)
        self.view.addSubview(continueButton)
        
        tittle.frame            = CGRect(x: 0, y: 150, width: self.view.frame.width, height: 20)
        tittle2.frame           = CGRect(x: self.view.frame.width/2-65, y: 170, width: 130, height: 50)
        descriptionLabel.frame  = CGRect(x: self.view.frame.width/2-75, y: 250, width:150 , height: 50)
        imput.frame             = CGRect(x: 50, y: 350, width: self.view.frame.width , height: 20)
        underLine.frame         = CGRect(x: 50, y: 370, width: self.view.frame.width-100, height: 2)
        descriptionInput.frame  = CGRect(x: self.view.frame.width/2-125, y: 380, width: 250, height: 50)
        continueButton.frame    = CGRect(x: 50, y: 600, width: 300, height: 40)
    }
    
    let  tittle : UILabel = {
        let text            = NSLocalizedString("Perfect!", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 18)
        return label
    }()
    
    let  tittle2 : UILabel = {
        let text            = NSLocalizedString("You are a fighter in Fightomania", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 18)
        label.numberOfLines = 2

        return label
    }()
    
    let  descriptionLabel : UILabel = {
        let text            = NSLocalizedString("now pick up a Battle Cry for provoke your opponents", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6100706336)
        label.font          = UIFont(name: "Lato-Regular", size: 12)
        label.numberOfLines = 2
        return label
    }()
    

    
    let imput : UITextField = {
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
    
    let underLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
    let  descriptionInput : UILabel = {
        let text            = NSLocalizedString("Need inspiration? Ypu can complete later in profile section", comment: "")
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
    
    
    @objc func nextView() {
        // Method called after Button LogIn pressed
//        self.navigationController?.pushViewController(SingUpEmail(), animated: true)
    }
    
    
}
