//
//  UIView+Ex.swift
//  NormalSwiftApp
//
//  Created by 觅蓝科技 on 2020/11/2.
//  Copyright © 2020 ilmeeself. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    ///加载Xib文件
    public class func loadViewFromXib() -> UIView {
        let className = String(describing: self)
        let view = Bundle.main.loadNibNamed(className, owner: nil, options: nil)?.last as! UIView
        return view
    }

    ///截图方法
    public func screenShotWithoutMask(shotView: UIView) -> UIImage {
        if #available(iOS 10.0, *){
            let renderer = UIGraphicsImageRenderer(bounds: bounds)
            return renderer.image { rendererContext in
                layer.render(in: rendererContext.cgContext)
            }
        }
        UIGraphicsBeginImageContextWithOptions(shotView.frame.size, true, 0.0)
        shotView.drawHierarchy(in: CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: shotView.frame.size.width, height: shotView.frame.size.height)), afterScreenUpdates: false)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
}
