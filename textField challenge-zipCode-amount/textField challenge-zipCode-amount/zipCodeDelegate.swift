//
//  zipCodeDelegate.swift
//  textField challenge-zipCode-amount
//
//  Created by Syed Shahrukh Haider on 19/03/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import Foundation
import UIKit


class zipCodeDelegate : NSObject,UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var newText = textField.text as! NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        return newText.length <= 5
    }


}
