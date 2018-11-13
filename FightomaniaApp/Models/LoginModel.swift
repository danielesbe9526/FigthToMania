//
//  LoginModel.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/4/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//

import Foundation
import Firebase


class LoginModel {
    
    var ref: DatabaseReference?
    
    func createuser(user : user)  {
        
        guard   let userEmail = user.email,
                let userPassword = user.password else {
                    return
        }
        
        Auth.auth().createUser(withEmail: userEmail , password: userPassword ) { (authResult, error) in
            guard let _ = authResult?.user
                else {
                    
                    if let error = error {
                        
                        let errorMessage = LoginViewModel()
                        errorMessage.getErrorMessage(error: error.localizedDescription)
                        
                    }else {
                        let errorMessage = LoginViewModel()
                        errorMessage.getErrorMessage(error: "ukwnown error")
                    }
                   
//                    let alert = SingUpVerification()
//                    alert.showAlertView(tittle: "Error", message: error.localizedDescription)
                    return
            }
            
            self.register(user : user)
        }

    }
    
    
    func register(user: user)  {
        ref = Database.database().reference()
        ref?.child("users").childByAutoId().setValue(["user":user.name,"birthday":user.birthday,"fighterName":user.fighterName])
        
        let succesfullMessage = LoginViewModel()
        succesfullMessage.getErrorMessage(error: "succesfull")
        
    }
}
