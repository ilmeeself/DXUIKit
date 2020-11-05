//
//  DXBundleManager.swift
//  DXUIKit
//
//  Created by 觅蓝科技 on 2020/11/5.
//

import UIKit

public class DXBundleManager: NSObject {

    
    public class func DXBundle() -> Bundle {
        
        let bundle = Bundle.init(identifier: "org.cocoapods.DXUIKit")
        let bundelURL = bundle!.url(forResource: "Source", withExtension: "bundle")
        let r_bundle = Bundle(url: bundelURL!)
        
        return r_bundle!
        
    }
    
    public class func loadImage(name:String) -> UIImage?   {
        
        let bundle = DXBundle()
        let img = UIImage(named: name, in: bundle, compatibleWith: .none)
        
        return img
    }
    
}
