//
//  Helpers.swift
//  MDAYA
//
//  Created by Ahmed Hafez on 2/7/20.
//  Copyright © 2020 Ahmed Hafez. All rights reserved.
//

import UIKit

class Helpers : NSObject {
    
    class func saveApiToken (token : String) {
        
        let def = UserDefaults.standard
        def.set(token, forKey: "access_token")
        def.synchronize()
    }
    
    class func baseUrl (url : String) {
        
        let URL = "https://mdaya.sakb-co.com.sa/api/v1/"
        
    }
}

