//
//  user.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/8/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//

import Foundation

class user {
    
    let name        : String?
    let birthday    : String?
    let fighterName :  String?
    let password    :  String?
    let email       : String?
    
    public init? (name: String?,  birtday : String? , fighterName : String? , password : String? , email : String?){
        self.name           = name
        self.birthday       = birtday
        self.fighterName    = fighterName
        self.password       = password
        self.email          = email
    }
   
}
