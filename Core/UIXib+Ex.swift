//
//  UIXib+Ex.swift
//  NormalSwiftApp
//
//  Created by 觅蓝科技 on 2020/11/2.
//  Copyright © 2020 ilmeeself. All rights reserved.
//

import Foundation
import UIKit

//适配参数
let suitParm : CGFloat = curr_scale(ScreenWidth)
//比例公式
func curr_scale(_ w:CGFloat) -> CGFloat {
    let scale = w / 375
    return scale
}


extension NSLayoutConstraint {
    
    @IBInspectable var adapterScreen: Bool {
        get {
            return true
        }
        
        set {
            if newValue {
               self.constant = self.constant * suitParm
            }
        }
    }
    
}

extension UIView {

    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue * widthScale
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable public var customBorderColor : UIColor {
        get{
            return UIColor.white
        }
        set {
            self.layer.borderColor = newValue.cgColor
        }
    }
    
}

//@IBDesignable extension UIButton{
//
//    @IBInspectable open var autoIBFont: CGFloat {
//        get {
//            return self.autoIBFont
//        }
//        set {
//            self.titleLabel?.font = AppFONT(newValue)
//        }
//    }
//
//    @IBInspectable open var autoIBFontBold: CGFloat {
//        get {
//            return self.autoIBFontBold
//        }
//        set {
//            self.titleLabel?.font = AppBold_FONT(newValue)
//        }
//    }
//
//}

//@IBDesignable extension UILabel{
//
//    @IBInspectable open var autoFont: CGFloat {
//        get {
//            return self.autoFont
//        }
//
//        set {
//            self.font = AppFONT(newValue)
//        }
//    }
//
//    @IBInspectable open var autoFontBold: CGFloat {
//        get {
//            return self.autoFontBold
//        }
//
//        set {
//            self.font = AppBold_FONT(newValue)
//        }
//    }
//
//}


