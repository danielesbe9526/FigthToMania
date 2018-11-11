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
    
    func createUserWhitCompletion (completeDownloadApi: @escaping (Bool) -> Void) {
        
    }

    func createuser(user : user)  {
        
        guard   let userEmail = user.email,
                let userPassword = user.password else {
                    return
        }
        
        Auth.auth().createUser(withEmail: userEmail , password: userPassword ) { (authResult, error) in
            guard let _ = authResult?.user
                else {
                    
                    let alert = SingUpVerification()
                    alert.showAlertView(tittle: "Error", message: error!.localizedDescription)
                    
//                    let alerController = UIAlertController(title: "Invalid Password", message: error!.localizedDescription, preferredStyle: .alert)
//                    let cancel  = UIAlertAction(title: "Cancel", style: .destructive) { (action) -> Void in
//                    }
//                    alerController.addAction(cancel)
//                   self.navigationController!.present(alerController, animated: true, completion: nil)
                    return
            }
            
            self.register(user : user)
        }

    }
    
    
    func register(user: user)  {
          ref = Database.database().reference()
       
        ref?.child("users").childByAutoId().setValue(["user":user.name,"fighterName":user.fighterName,"birthday":user.birthday])
//        self.ref?.child("users").child("users").setValue(["username": userName])
    }
}
