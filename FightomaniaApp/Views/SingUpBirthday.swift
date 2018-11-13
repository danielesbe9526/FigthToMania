//
//  SingUpBirthday.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/6/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//


import UIKit

class SingUpBirthday: UIViewController  {
  
    let defaultColor : UIColor  = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
    var birthdayDate            = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
        setUpView()
        self.navigationController?.navigationBar.tintColor = defaultColor
        
        let datePicker = UIDatePicker()
        datePicker.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        datePicker.timeZone = NSTimeZone.local
        datePicker.datePickerMode = UIDatePicker.Mode.date
        datePicker.center = view.center
        datePicker.setValue(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), forKeyPath: "textColor")
        datePicker.minimumDate = Calendar.current.date(byAdding: .year, value: -100, to: Date())
        datePicker.maximumDate = Calendar.current.date(byAdding: .year, value: -15, to: Date())
//        guard let last16YearsAgo = Calendar.current.date(byAdding: .year, value: -16, to: Date()) else {return}
//        datePicker.date = last16YearsAgo
        
        self.view.addSubview(datePicker)
        datePicker .frame       = CGRect(x: 10, y: 300, width: self.view.frame.width-20, height: 100)
        datePicker.addTarget(self, action: #selector(datePickerValueChanged), for: .valueChanged)
        
        
        let hideKeyboard: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(hideKeyboard)
    }

    
    @objc func datePickerValueChanged(_ sender: UIDatePicker){
        
        // Create date formatter
        let dateFormatter: DateFormatter = DateFormatter()
        
        // Set date format
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        // Apply date format
        let selectedDate: String = dateFormatter.string(from: sender.date)
        birthdayDate = selectedDate
        continueButton.isEnabled = true
        continueButton.isHidden = false
    }
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    func setUpView()  {

        self.view.addSubview(continueButton)
        self.view.addSubview(tittle)

        tittle.frame            = CGRect(x: 0, y: 150, width: self.view.frame.width, height: 20)
        continueButton.frame    = CGRect(x: 50, y: 600, width: 300, height: 40)
        continueButton.isEnabled = false
        continueButton.isHidden = true

    }
    
    
    
    let  tittle : UILabel = {
        let text            = NSLocalizedString("When is you birthday?", comment: "")
        var label           = UILabel()
        label.text          = text
        label.textAlignment = .center
        label.textColor     = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font          = UIFont(name: "Lato-Regular", size: 18)
        return label
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
    
    @objc func nextView() {

        let viewModel = LoginViewModel()
        viewModel.setDictionaryWhitStrings(whit: birthdayDate, andKey: 2)
        
        self.navigationController?.pushViewController(SingUpFighterName(), animated: true)
    }
    
    
}
