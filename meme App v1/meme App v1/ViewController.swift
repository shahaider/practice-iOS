//
//  ViewController.swift
//  meme App v1
//
//  Created by Syed Shahrukh Haider on 27/03/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
   
    @IBOutlet weak var image: UIImageView!

    @IBOutlet weak var topText: UITextField!
    @IBOutlet weak var bottomText: UITextField!
    
    @IBOutlet weak var camera: UIBarButtonItem!
    @IBOutlet weak var nav: UINavigationBar!
    @IBOutlet weak var toolbar: UIToolbar!
    
    
    
    var memeImage: UIImage?
    
    struct MemeStruct{
    var tText: String
    var bText: String
    var originalImage: UIImage
    var memedImage: UIImage
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
// setting TEXT attribute
        
        let dict = [NSStrokeColorAttributeName: UIColor.black,
                    NSForegroundColorAttributeName:UIColor.white,
                    NSFontAttributeName: UIFont.systemFont(ofSize: 35),
                    NSStrokeWidthAttributeName: 2]
                                                    as [String : Any]
       
        
        topText.defaultTextAttributes = dict
        bottomText.defaultTextAttributes = dict
        
        topText.textAlignment = .center
        bottomText.textAlignment = .center
        
       topText.text = "Top"
        bottomText.text = "Bottom"
        
        topText.delegate = self
        bottomText.delegate = self
        
    }

//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        topText.clearsOnBeginEditing = true
//        bottomText.clearsOnBeginEditing = true
//    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
topText.resignFirstResponder()
bottomText.resignFirstResponder()
        
        return true
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardOpen), name: .UIKeyboardWillShow, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardClose), name: .UIKeyboardWillHide, object: nil)
    }
    
    func keyboardOpen(notification: Notification){
    
        self.view.frame.origin.y = -getKeyboardHeight(notification)
    }
    
    func keyboardClose(notification: Notification){
        self.view.frame.origin.y = 0
    }
    
    
    func getKeyboardHeight(_ notification:Notification) -> CGFloat {
        
        let userInfo = notification.userInfo
        let keyboardSize = userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue // of CGRect
        return keyboardSize.cgRectValue.height
    }
    
    @IBAction func activityButton(_ sender: Any) {
        
        
        
    }

    @IBAction func cameraButton(_ sender: Any) {
        
        
//        let imagePicker = UIImagePickerController()
//        // prepare code segue
//        self.present(imagePicker, animated: true, completion: nil)
//        // setting delegate
//        imagePicker.delegate = self
//        // source type
//        imagePicker.sourceType = .camera        //<----- CHANGE
        
    }
    @IBAction func albumButton(_ sender: Any) {
        
        let imagePicker = UIImagePickerController()
        // prepare code segue
        self.present(imagePicker, animated: true, completion: nil)
        // setting delegate
        imagePicker.delegate = self
        // source type
        imagePicker.sourceType = .photoLibrary
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let imagePick = info["UIImagePickerControllerOriginalImage"] as! UIImage
        self.image.image = imagePick
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    func geneMeme()-> UIImage{
    
    
        self.nav.isHidden = true
        self.toolbar.isHidden = true

        UIGraphicsBeginImageContext(self.view.frame.size)
    
        view.drawHierarchy(in: self.view.frame, afterScreenUpdates: true)
        let memedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.nav.isHidden = false
        self.toolbar.isHidden = false
        return memedImage!
    }
    
//    func save() {
//        // Create the meme
//        let meme = MemeStruct(tText: topText.text!, bText: bottomText.text!, originalImage: image.image, memedImage: memeImage)
//    }

}

