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
//        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SendEmail(_ sender: Any) {
        
        
        guard let email = EmailTF.text, email.isEmpty else {return}
        
      restpassword(email: email)
        
    }
    
    func restpassword (email : String) {
        let Url = "https://mdaya.sakb-co.com.sa/api/v1/restpassword"
        let Headers = ["type-dev":"ios","val-dev":" I$&h6#565iOs5ioS#(*I$&h6#565iOs5ioS#"]
               let parmeters  = ["email":"email"]
        
        Alamofire.request(Url, method: .post, parameters: parmeters, encoding: URLEncoding.default, headers: Headers).responseJSON {
             response in
            
            switch response.result {
            case.failure(let error):
                print (error)
            case.success(let value):
                let json = JSON (value)
                let statuseCode = json ["StatusCode"]
                
                if statuseCode == 0 {
                    print("Done")
                }else {
                    if let message = json ["Message"].string {
                        
                        let alert = UIAlertController.init(title: "error", message: message, preferredStyle: .alert)
                                          
                                          let okAction = UIAlertAction.init(title: "Ok", style: .destructive, handler: nil)
                                          
                                          alert.addAction(okAction)
                                          self.present(alert, animated: true, completion: nil)
                    }
                    
                }
             }
        }
        
    }

}
