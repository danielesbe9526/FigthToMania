//
//  CustomAlertViewDelegate.swift
//  FightomaniaApp
//
//  Created by Usuario1 on 11/7/18.
//  Copyright © 2018 Usuario1. All rights reserved.
//

protocol CustomAlertViewDelegate: class {
    func okButtonTapped(selectedOption: String, textFieldValue: String)
    func cancelButtonTapped()
}
