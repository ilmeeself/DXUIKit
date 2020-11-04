//
//  UILabel+Ex.swift
//  NormalSwiftApp
//
//  Created by 觅蓝科技 on 2020/11/2.
//  Copyright © 2020 ilmeeself. All rights reserved.
//

import UIKit

extension UILabel{
    @objc open func addTapInterface(_ action : Selector?){
        self.isUserInteractionEnabled = true
        let tapGes = UITapGestureRecognizer.init(target: self, action: action)
        tapGes.numberOfTapsRequired    = 1
        tapGes.numberOfTouchesRequired = 1
        self.addGestureRecognizer(tapGes)
    }
    
    ///改变一行文字中的大小和颜色
    @objc open func changeStringColor(_ subStr : String, color : UIColor , font : UIFont){
        if self.text?.count == 0{
            return
        }
        
        let str : NSMutableAttributedString = NSMutableAttributedString.init(string: self.text!)
        
        let textStr : NSString = self.text! as NSString
        let range : NSRange    = textStr.range(of: subStr)
        str.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        str.addAttribute(NSAttributedString.Key.font, value: font, range: range)
        self.attributedText = str
    }
    
    ///加删除线
    @objc open func addDeleteLine(){
        let lineStr = NSAttributedString(string: self.text!,attributes: [NSAttributedString.Key.strikethroughStyle:NSUnderlineStyle.single.rawValue])
        self.attributedText = lineStr
    }
    
}
