//
//  CustomAlertViewRegistryConfirmation.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/12/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//

import UIKit

class CustomAlertViewRegistryConfirmation: UIViewController {
    
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
        alertView.frame                 = CGRect(x: self.view.frame.width/2-150, y: 250, width: 300, height: 380)
        alertView.layer.cornerRadius    = 15
        
        
        alertView.addSubview(tittle)
        alertView.addSubview(descriptionLabel)
        alertView.addSubview(imageIcon)
        alertView.addSubview(continueButton)
        
        tittle.frame                = CGRect(x: 20, y: 10, width: alertView.frame.width-40, height: 30)
        descriptionLabel.frame      = CGRect(x: alertView.frame.width/2-100, y: 50, width: 200, height: 30)
        imageIcon.frame             = CGRect(x: alertView.frame.width/2-100, y: 100, width:200, height: 214)
        continueButton.frame        = CGRect(x: 20, y: 310, width: alertView.frame.width-50, height: 40)
        
    }
    
    
    
    
    let  tittle : UILabel = {
        let text            = NSLocalizedString("Registry Confirmation", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
        label.font          = UIFont(name: "Lato-Regular", size: 18)
        return label
    }()
    
    
    let  descriptionLabel : UILabel = {
        let text            = NSLocalizedString("Please verify your email for confirmate your register", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
        label.font          = UIFont(name: "Lato-Regular", size: 12)
        label.numberOfLines = 2
        return label
    }()
    
    
    let imageIcon : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "login_pillow_header.jpg")
        return image
    }()
    
    let continueButton : UIButton = {
        let purpleColor : UIColor = UIColor(red: 217/255, green: 0/255, blue: 10/255, alpha: 1)
        
        let text = NSLocalizedString("OK", comment: "")
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
        self.dismiss(animated: true) {
            
            let verificationView = SingUpEmail()
            verificationView.presentNextViewController()
        }
        
    }
    
    let alertView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    

}
