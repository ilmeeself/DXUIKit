//
//  DXBundleManager.swift
//  DXUIKit
//
//  Created by 觅蓝科技 on 2020/11/5.
//

import UIKit

public class DXBundleManager: NSObject {

    //====================  podspec file:resource_bundles   ==========================//
    //MARK:获取Bundle
    public class func DXResourceBundles() -> Bundle {
        
        let bundle = Bundle.init(identifier: "org.cocoapods.DXUIKit")
        let bundelURL = bundle!.url(forResource: "Source", withExtension: "bundle")
        let r_bundle = Bundle(url: bundelURL!)
        return r_bundle!
        
    }
    //MARK:获取Bundle下的图片
    public class func loadResourceBundleImage(name:String) -> UIImage?   {
        let bundle = DXResourceBundles()
        let img = UIImage(named: name, in: bundle, compatibleWith: .none)
        return img
    }
    
    
    //======================= podspec file:resources  ==============================//
    //MARK:获取Bundle
    public class func DXBundle(fromClass:AnyClass) -> Bundle {
        let bundle = Bundle(for: fromClass)
        return bundle
    }
    //MARK:获取Bundle下的图片
    public class func loadBundleImage(bundle:Bundle,name:String) -> UIImage?   {
        let img = UIImage(named: name, in: bundle, compatibleWith: .none)
        
        return img
    }
    //MARK:获取Bundle下的xib文件
    public class func loadBundleXib(fromClass:AnyClass) -> UIView {
        let bundle = Bundle(for: fromClass)
        let className = String(describing: fromClass)
        guard let view = bundle.loadNibNamed(className, owner: nil, options: nil)?.last as? UIView else {
            return UIView()
        }
        return view
    }
    
}
