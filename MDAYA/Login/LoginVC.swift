//
//  LoginVC.swift
//  MDAYA
//
//  Created by Ahmed Hafez on 1/20/20.
//  Copyright © 2020 Ahmed Hafez. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LoginVC: UIViewController  {

    @IBOutlet weak var PasswordTF: UITextField!
    @IBOutlet weak var EmailTF: UITextField!
    // button forget
    
    @IBOutlet weak var forgetpaaswordBtn: UIButton!
    // button register
    
    @IBOutlet weak var createAccount: UIButton!
    
    
    var ind : UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // ind  =  UIActivityIndicatorView.init(style: .UIActivityIndicatorView.Style.large)
       //self.view.addsubview(ind)
        
        // Do any additional setup after loading the view.
    }
    @IBAction func LoginBut(_ sender: Any) {
        
        //get the data from the text fields


         //validate if the data is empty or not
        guard let email = EmailTF.text,!email.isEmpty else {return}
        guard let password = PasswordTF.text , !password.isEmpty else {return}
        

      // ind.startanimation(true)
      sendRequest(email: email, password: password)
    }
    
    func sendRequest (email : String ,password :String) {
              
        let Url = "https://mdaya.sakb-co.com.sa/api/v1/login/email"
        
        
        let Headers = ["type-dev":"ios","val-dev":" I$&h6#565iOs5ioS#(*I$&h6#565iOs5ioS#"]
        let parmeters  = ["email_user_name":email,"password":password]
            
        Alamofire.request(Url, method: .post, parameters: parmeters, encoding: URLEncoding.default, headers: Headers).responseJSON {response in
            
            switch response.result {
            
            case.failure(let error):
                
                print(error)
      
            case .success(let value):
                let json = JSON(value)
                
                let statusCode =  json["StatusCode"]
                    //as! Int
                if(statusCode == 0) {
                    
                    let data = json["data"].dictionaryValue
                        //as! [String : Any]
                    UserDefaults.standard.set(data["access_token"]?.stringValue
                        , forKey: "accessToken")
                    print("successful login")
                    
                    self.dismiss(animated: true, completion: nil)
                    
                } else {
                    
                    if let message = json["Message"].string {
                        
                        
                        let alert = UIAlertController.init(title: "error", message: message, preferredStyle: .alert)
                        
                        let okAction = UIAlertAction.init(title: "Ok", style: .destructive, handler: nil)
                        
                        alert.addAction(okAction)
                        self.present(alert, animated: true, completion: nil)
                        
                    }
                     
                }

   }
 }
        
        
}
    //to do
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
    }
    
    @IBAction func forgetpasswordBtn(_ sender: Any) {
        
        self.performSegue(withIdentifier: "showForgetpassword", sender: nil)
    }
    
    // action forget button
    
    
    
    // action register button
    
    

}
