//
//  RegisterVC.swift
//  MDAYA
//
//  Created by Ahmed Hafez on 1/20/20.
//  Copyright © 2020 Ahmed Hafez. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class RegisterVC: UIViewController {

    @IBOutlet weak var NameTF: UITextField!
    @IBOutlet weak var EmailTF: UITextField!
    @IBOutlet weak var PhoneTF: UITextField!
    @IBOutlet weak var AddressTF: UITextField!
    @IBOutlet weak var PasswordTF: UITextField!
    @IBOutlet weak var ConformPassTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CreateAccount(_ sender: Any) {
        
        guard let name = NameTF.text, name.isEmpty else {return}
        guard let email =  EmailTF.text, email.isEmpty else {return}
        guard let phone = PhoneTF.text, phone.isEmpty else {return}
        guard let address =  AddressTF.text, address.isEmpty  else {return}
        guard let password = PasswordTF.text , password.isEmpty else {return}
        guard let conform = ConformPassTF.text , conform.isEmpty else {return}
        
       
        
        }
    
           let URL = ""
      
      func CreateAccount (name: String , email : String , phone :String , address :String, password:String, conform: String) {
        
         let Headers = ["type-dev":"ios","val-dev":" I$&h6#565iOs5ioS#(*I$&h6#565iOs5ioS#"]
        let parmeters  = ["email_user_name":email,"password":password]
        
        
        
    }
    
    
    }


