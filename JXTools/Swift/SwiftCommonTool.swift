//
//  SwiftCommonTool.swift
//  AFNetworking
//
//  Created by Aaron on 2017/11/13.
//

import Foundation
import UIKit


extension NSString {
    
    func callPhone(number:String){
        
        let telephoneNumber = "number"
        let str = "tel:\(telephoneNumber)"
        let application = UIApplication.shared
        let url = URL(string: str)
        
        if #available(iOS 10.0, *){
            application.open(url!, options: [:], completionHandler: {(_ success: Bool) -> Void in
                
                print("OpenSuccess=\(success)")
            })
        }else{
            application.openURL(url!)
        }

        
    }
    
}
