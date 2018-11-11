//
//  LoginViewModel.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/4/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//

import Foundation

 var dictionaryUserInfo = ["name":"","birthday":"","fighterName":"","password":"", "email": ""]

class LoginViewModel {

    
    func setDictionaryWhitStrings(whit Value : String, andKey Key : Int) {
        
        
        switch Key {
        case 1:
            dictionaryUserInfo["name"] = Value
        case 2:
            dictionaryUserInfo["birthday"] = Value
        case 3:
            dictionaryUserInfo["fighterName"] = Value
        case 4:
            dictionaryUserInfo["password"] = Value
        case 5:
            dictionaryUserInfo["email"] = Value
        default:
            return
        }
        
    }
    func getUserModel()  {
        
        guard let userinitialized = user.init(name: dictionaryUserInfo["name"],
                             birtday: dictionaryUserInfo["birthday"],
                             fighterName: dictionaryUserInfo["fighterName"],
                             password: dictionaryUserInfo["password"],
                             email: dictionaryUserInfo["email"]) else {return}
        
        signInWihtCurrentUser(user: userinitialized)
        
    }
    
    func signInWihtCurrentUser(user : user)  {
        let model = LoginModel()
        model.createuser(user: user)
    }
    
    
    
}



