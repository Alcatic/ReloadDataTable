//
//  Data.swift
//  ReloadDataTable
//
//  Created by c85529 on 5/13/19.
//  Copyright © 2019 c85529. All rights reserved.
//

import UIKit


class Data{
    
    var productName: String
    var productForSaleImage: UIImage
    var productSize : String
    
    init(name: String, saleImage: UIImage, size: String) {
        
        productName = name
        productForSaleImage = saleImage
        productSize = size
    }
    
    static func createData() -> [Data]{
        
        var dataArray = [Data(name: "Louis Voutiton Shirt", saleImage: #imageLiteral(resourceName: "Muirhead"), size: "M"),
                         Data(name: "Food", saleImage: #imageLiteral(resourceName: "curry"), size: "L"),
                         Data(name: "Skull", saleImage: #imageLiteral(resourceName: "test"), size: "S"),
                         Data(name: "Blue Star", saleImage: #imageLiteral(resourceName: "selected_star"), size: "S"),
                         Data(name: "Ackee", saleImage: #imageLiteral(resourceName: "ackee"), size: "XL")]
        
        return dataArray
    }
    
    
    static func createReviewData() -> [String]{
        var allReviews = ["fewunfuwenfewfnew fwdfdf ndfj ewdf","edasfwscer   er fgdsfdsfdwfw","dfweff fer gergrfvfevfvfe","ibyubybyb efw4tgrfr4","fsafefer tveervt gfegwc"]
        
        return allReviews
    }
}
