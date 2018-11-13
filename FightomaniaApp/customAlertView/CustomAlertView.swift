//
//  CustomAlertView.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/7/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//


import UIKit

class CustomAlertView: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.clear
        view.isOpaque = false
        
        let hideKeyboard: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(hideKeyboard)
        
        setUpView()
    }
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    func setUpView()  {
        
        
        self.view.addSubview(alertView)
        alertView.frame           = CGRect(x: self.view.frame.width/2-125, y: 300, width: 250, height: 200)
        alertView.layer.cornerRadius = 15

        
        alertView.addSubview(tittle)
        alertView.addSubview(descriptionLabel)
        alertView.addSubview(emailLabel)
        alertView.addSubview(emailImput)
        alertView.addSubview(underLineImputEmail)
        alertView.addSubview(resetButton)
    
        
        
        tittle.frame                = CGRect(x: 20, y: 10, width: alertView.frame.width-20, height: 30)
        descriptionLabel.frame      = CGRect(x: alertView.frame.width/2-55, y: 50, width: 120, height: 30)
        emailLabel.frame            = CGRect(x: 20, y: 100, width: alertView.frame.width-20, height: 20)
        emailImput.frame            = CGRect(x: 20, y: 120, width: alertView.frame.width-20, height: 20)
        underLineImputEmail.frame   = CGRect(x: 20, y: 140, width: alertView.frame.width-40, height: 1)
        resetButton.frame          = CGRect(x: 20, y: 150, width: alertView.frame.width-50, height: 40)
        
    }
    

    
    
    let  tittle : UILabel = {
        let text            = NSLocalizedString("Forgot your password?", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
        label.font          = UIFont(name: "Lato-Regular", size: 18)
        return label
    }()
    
    
    let  descriptionLabel : UILabel = {
        let text            = NSLocalizedString("Please,Type your email for resetPassword", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
        label.font          = UIFont(name: "Lato-Regular", size: 12)
        label.numberOfLines = 2
        return label
    }()
    
    let  emailLabel : UILabel = {
        let text            = NSLocalizedString("Email", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textColor     = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
        label.font          = UIFont(name: "Lato-Regular", size: 14)
        return label
    }()
    
    let emailImput : UITextField = {
        let text = UITextField()
        //        text.placeholder                = "Email"
        let colorText = NSAttributedString(string: ".", attributes: [NSAttributedString.Key.foregroundColor : UIColor.purple])
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
        let purpleColor : UIColor = UIColor(red: 217/255, green: 0/255, blue: 10/255, alpha: 1)
        
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
      button.addTarget(self, action: #selector(cancelbutton), for: .touchUpInside)
        return button
    }()

    
    @objc func cancelbutton() {
        self.dismiss(animated: true, completion: nil)
    }
    
    let alertView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
    
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        setUpView()
//        animateView()
//
////        cancelButton.addBorder(side: .Top, color: alertViewGrayColor, width: 1)
////        cancelButton.addBorder(side: .Right, color: alertViewGrayColor, width: 1)
////        okButton.addBorder(side: .Top, color: alertViewGrayColor, width: 1)
//    }
//
//
//    func animateView() {
//        alertView.alpha = 0;
//        self.alertView.frame.origin.y = self.alertView.frame.origin.y + 50
//        UIView.animate(withDuration: 0.4, animations: { () -> Void in
//            self.alertView.alpha = 1.0;
//            self.alertView.frame.origin.y = self.alertView.frame.origin.y - 50
//        })
//    }
    
//    @IBAction func onTapCancelButton(_ sender: Any) {
//        alertTextField.resignFirstResponder()
//        delegate?.cancelButtonTapped()
//        self.dismiss(animated: true, completion: nil)
//    }
//
//    @IBAction func onTapOkButton(_ sender: Any) {
//        alertTextField.resignFirstResponder()
//        delegate?.okButtonTapped(selectedOption: selectedOption, textFieldValue: alertTextField.text!)
//        self.dismiss(animated: true, completion: nil)
//    }
    
//    @IBAction func onTapSegmentedControl(_ sender: UISegmentedControl) {
//        switch sender.selectedSegmentIndex {
//        case 0:
//            print("First option")
//            selectedOption = "First"
//            break
//        case 1:
//            print("Second option")
//            selectedOption = "Second"
//            break
//        default:
//            break
//        }
//    }
}

