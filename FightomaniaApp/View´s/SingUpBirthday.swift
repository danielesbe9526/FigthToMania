//
//  SingUpBirthday.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/6/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//


import UIKit

class SingUpBirthday: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate{
  
    let defaultColor : UIColor = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
    let months = ["january","February","March","April","May","June","july","August","September","October","November","December"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 71/255, green: 1/255, blue: 56/255, alpha: 1)
        setUpView()
        self.navigationController?.navigationBar.tintColor = defaultColor
        let birthdaypicker = UIPickerView()
        birthdaypicker.dataSource = self
        birthdaypicker.delegate = self
        birthdaypicker.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.03769798801)

        self.view.addSubview(birthdaypicker)
        birthdaypicker.frame    = CGRect(x: 10, y: 300, width: self.view.frame.width-20, height: 100)

    }
    
    
    func setUpView()  {

        self.view.addSubview(continueButton)
        self.view.addSubview(tittle)
       
        
        tittle.frame            = CGRect(x: 0, y: 150, width: self.view.frame.width, height: 20)
        continueButton.frame    = CGRect(x: 50, y: 600, width: 300, height: 40)
    }
    
//    let birthdaypicker : UIPickerView = {
//       let picker = UIPickerView()
//
//        return picker
//    }()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 12
        } else  if component == 1 {
            return 31
        }else {
            return 80
        }
    }
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        var year = 1950
//
//        if component == 0 {
//            return months[row]
//        } else if component == 1{
//            return "\(row + 1)"
//        }else {
//            year = year + row
//            return "\(year)"
//        }
//    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        var year = 1950
        
        if component == 0 {
            let attributedString = NSAttributedString(string: months[row], attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
            return attributedString
            
        } else if component == 1{
            let attributedString = NSAttributedString(string: "\(row + 1)", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
            return attributedString
           
        }else {
            year = year + row
            let attributedString = NSAttributedString(string: "\(year)", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
            return attributedString
        
        }
    }
    let  tittle : UILabel = {
        let text            = NSLocalizedString("When is your birthday?", comment: "")
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
        // Method called after Button LogIn pressed
        self.navigationController?.pushViewController(SingUpFighterName(), animated: true)
    }
    
    
}
