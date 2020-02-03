//
//  HomeCollectionVC.swift
//  MDAYA
//
//  Created by Ahmed Hafez on 1/23/20.
//  Copyright © 2020 Ahmed Hafez. All rights reserved.
//

import UIKit
import  Alamofire
import SwiftyJSON


class HomeCollectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
   

    @IBOutlet weak var HomeCollactionview : UICollectionView!
    
    var productList : [[String:Any]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
//        collectionView.delegat = self

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//self.HomeCollactionview.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "mainHome")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        if(UserDefaults.standard.object(forKey: "accessToken") == nil ){
            
            
            self.perform(#selector(showLOGIN), with: nil, afterDelay: 0.5)
            
        }else {
            
            
            // api product
            let Url  = "https://mdaya.sakb-co.com.sa/api/v1/home"
            let Headers = ["type-dev":"ios","val-dev":" I$&h6#565iOs5ioS#(*I$&h6#565iOs5ioS#"]
            
            
           Alamofire.request(Url, method: .post, parameters: nil, encoding: URLEncoding.default, headers: Headers).responseJSON {response in

            
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
                        self.productList  = data["products_glass"]?.arrayObject as! [[String:Any]]
                        self.HomeCollactionview.reloadData()
                          
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
    }
    
    @objc func showLOGIN (){
        
        self.performSegue(withIdentifier: "showLogin", sender: nil)
    }


   
 var MainHomeCollectionViewCell : UICollectionViewFlowLayout {
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     
         
         return CGSize(width: 150, height: 150)
         }
    
    // MARK: UICollectionViewDataSource

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return productList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainHome", for: indexPath) as! MainHomeCollectionViewCell
        
        cell.productGlass = self.productList[indexPath.row] as! [String :Any]
        
        
        // Configure the cell
    
        return cell
    }

    

  }
}
