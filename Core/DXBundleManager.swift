//
//  DXBundleManager.swift
//  DXUIKit
//
//  Created by 觅蓝科技 on 2020/11/5.
//

import UIKit

public class DXBundleManager: NSObject {

    
    public class func DXResourceBundles() -> Bundle {
        
        let bundle = Bundle.init(identifier: "org.cocoapods.DXUIKit")
        let bundelURL = bundle!.url(forResource: "Source", withExtension: "bundle")
        let r_bundle = Bundle(url: bundelURL!)
        return r_bundle!
        
    }
    
    public class func loadResourceBundleImage(name:String) -> UIImage?   {
        let bundle = DXResourceBundles()
        let img = UIImage(named: name, in: bundle, compatibleWith: .none)
        return img
    }
    
    public class func DXBundle(fromClass:AnyClass) -> Bundle {
        let bundle = Bundle(for: fromClass)
        return bundle
    }
    
    public class func loadBundleImage(bundle:Bundle,name:String) -> UIImage?   {
        let img = UIImage(named: name, in: bundle, compatibleWith: .none)
        
        return img
    }
    
}
