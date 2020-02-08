//
//  MainHomeCollectionViewCell.swift
//  MDAYA
//
//  Created by Ahmed Hafez on 1/28/20.
//  Copyright © 2020 Ahmed Hafez. All rights reserved.
//

import UIKit
import Kingfisher

class MainHomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var priceTF: UILabel!
    @IBOutlet weak var fevoriteImage: UIImageView!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var taypeTF: UILabel!
    @IBOutlet weak var typeboxTF: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var productNumTF: UIView!
    @IBOutlet weak var minusBtn: UIButton!
    
    var productGlass : productGlassModel {
        get {
            return self.productGlass
        }
        set (obj) {
            setProductGlass(obj: obj)
        }
        
    }
   // public func setProductGlass(obj : [String : Any])
    
    override func awakeFromNib() {

        self.backgroundColor = UIColor.cyan

    }
    
    func setProductGlass(obj : productGlassModel) {
        
        priceTF.text = obj.cat_name
        taypeTF.text = obj.name
        
        let baseurl = "https://mdaya.sakb-co.com.sa/api/v1/home/uploads/products/2017_6_30_10_33_39_120.jpg"
//        let image = [""]
        
        let url = URL(string: baseurl )
        productImage.kf.setImage(with:url)
        
        }
//        let Url = "https://mdaya.sakb-co.com.sa/api/v1/home"
//               let request = NSURLRequest.init(url: Url as URL)
//                    NSURLConnection.sendAsynchronousRequest(request as URLRequest, queue: OperationQueue.main) {
//                        (response: URLResponse!, data: Data!, error: Error!) -> Void in
//                        if(error == nil) {
//
//                            self.productImage = UIImage(data: data! as Data)
//                        }
//                    }
    }
