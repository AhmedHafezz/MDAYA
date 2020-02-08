//
//  productGlassModel.swift
//  MDAYA
//
//  Created by Ahmed Hafez on 1/30/20.
//  Copyright © 2020 Ahmed Hafez. All rights reserved.
//

import Foundation
import  SwiftyJSON

struct productGlassModel {
    
    
  
    var values : [String : Any] = [:]
    var cat_link :String {
        get {
            values["cat_link"] as! String
        }set (value) {
            values["cat_link"] = value
        }
    }
    
    var name : String {
        get {
            values["name"] as! String
        }
        set (value) {
            values["name"] = value
        }
    }
    
    var cat_name : String {
        get {
            values["cat_name"] as! String
           }
        set (value) {
            values["cat_name"] = value
        } 
    }
    
    
    var image : String {

        get {
            values ["image"] as! String
        }
        set (value) {

           values ["image"] = value
        }
    }
  
    
    init(obj:[String : Any] ) {
        for (key, value) in obj {
            values[key] = value
        }
    }
    
}


//class modle {
//
//    var image = [String] ()
//
//      init(obj : Dictionary<String, AnyObject>) {
//
//        if let image = obj ["images"] as?  [String]{
//
//            self.image = image
//
//            print("this is the immages \(image)")
//
//        }
//
//    }
//        
//}
//
////class productGlassModel : Dictionary<Key: Hashable, Any> {
////
////
////    var cat_link :String?
////    var cat_name : String
////
////    init(obj:[String:Any]){
////
////        cat_link = obj["cat_name"] as? String ?? ""
////        cat_name = obj["cat_name"] as? String ?? ""
////
////
////
////    }
////
////}
//
//extension Dictionary {
//    
//    weak var cat_link :String?
//        
//    
//    
//    weak var cat_name : String
//        
//        self
//}
//
//
//
//
////"data": {
////        "count_cart": 0,
////        "products_glass": [
////            {
////                "cat_link": "الزجاج5lOMZQzn",
////                "cat_name": "الزجاج",
////                "link": "مضايا__500_ملXGqZBFuJ",
////                "name": "مضايا  500 مل",
////                "like": 0, Int
////                "num_like": 2,
////                "star_rate": 0,
////                "rate": 0,
////                "total_number_prod": 500,
////                "sale_number_prod": 5,
////                "valid_instoke_prod": 495,
////                "discount": 0,
////                "price": 23,
////                "total_price": 23,
////                "image": "/uploads/products/2017_6_30_10_33_39_120.jpg",
////                "another_image": [],
////                "dec_prod": [
////                    {
////                        "weight": "",
////                        "code": "65467897987",
////                        "pripce": "23",
////                        "discount": 0
////                    }
////                ],
////                "color": [],
////                "weight": [
////                    {
////                        "name": ""f
////                    }
////                ],
////                "city_made": "",
////                "description": "1 كرتونة - 24 زجاجة"
//////            },
