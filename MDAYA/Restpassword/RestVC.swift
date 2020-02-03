//
//  RestVC.swift
//  MDAYA
//
//  Created by Ahmed Hafez on 1/20/20.
//  Copyright © 2020 Ahmed Hafez. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class RestVC: UIViewController {

    @IBOutlet weak var EmailTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SendEmail(_ sender: Any) {
        
        
        guard let email = EmailTF.text, email.isEmpty else {return}
        
        
        
    }
    
    func restpassword (email : String,pasword: String) {
        let Url = "https://mdaya.sakb-co.com.sa/api/v1/restpassword"
        let Headers = ["type-dev":"ios","val-dev":" I$&h6#565iOs5ioS#(*I$&h6#565iOs5ioS#"]
               let parmeters  = ["email":"email","password":"password"]
        
    }
    

}
