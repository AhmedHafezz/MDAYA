//
//  MainHomeCollectionViewCell.swift
//  MDAYA
//
//  Created by Ahmed Hafez on 1/28/20.
//  Copyright © 2020 Ahmed Hafez. All rights reserved.
//

import UIKit

class MainHomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var priceTF: UILabel!
    @IBOutlet weak var fevoriteImage: UIImageView!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var taypeTF: UILabel!
    @IBOutlet weak var typeboxTF: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var productNumTF: UIView!
    @IBOutlet weak var minusBtn: UIButton!
    
    var productGlass : [String:Any] = [:]
    
    override func awakeFromNib() {
         
        priceTF.text = productGlass["cat_name"] as? String ?? ""
        
        
//       let request = NSURLRequest.init(url: url as URL)
//            NSURLConnection.sendAsynchronousRequest(request as URLRequest, queue: OperationQueue.main) {
//                (response: URLResponse!, data: Data!, error: Error!) -> Void in
//                if(error == nil) {
//
//                    self.productImage = UIImage(data: data! as Data)
//                }
//            }
        
        
    }
    
    
    // IB every component
    
}
