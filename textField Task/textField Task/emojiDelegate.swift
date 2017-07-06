//
//  emojiDelegate.swift
//  textField Task
//
//  Created by Syed Shahrukh Haider on 16/03/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import Foundation
import UIKit


class emojiDelegate: NSObject, UITextFieldDelegate{

    // MARK: Properties
    
    var translations = [String : String]()
    
    // MARK: Initializer
    
    override init() {
        super.init()
        
        translations["heart"] = "\u{0001F496}"
        translations["fish"] = "\u{E522}"
        translations["bird"] = "\u{E523}"
        translations["frog"] = "\u{E531}"
        translations["bear"] = "\u{E527}"
        translations["dog"] = "\u{E052}"
        translations["cat"] = "\u{E04F}"
    }

    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // declaring variable
        var replaceToEmoji = false
        var emojiStringRange : NSRange
        
        // recieving String data from textField1
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
      
        
        
        for (emojiString, emoji) in translations{
        
            repeat{
            emojiStringRange = newText.range(of: emojiString, options: .caseInsensitive)
                
                
                if emojiStringRange.location != NSNotFound {
               
                    newText = newText.replacingCharacters(in: emojiStringRange, with: emoji) as NSString
                    replaceToEmoji = true
                
                }
            }
                while emojiStringRange.location != NSNotFound

        
        }
        
        
        
        if replaceToEmoji{
            textField.text = newText as String
            return false
        }
            else{
                return true
            }
        }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.text = ""
    }
    
    }



