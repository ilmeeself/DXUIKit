//
//  UIAutoHeader.swift
//  NormalSwiftApp
//
//  Created by 觅蓝科技 on 2020/11/2.
//  Copyright © 2020 ilmeeself. All rights reserved.
//

import Foundation
import UIKit

/** 颜色 */
public func UIRGBColor(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat,_ a:CGFloat) ->(UIColor){
    return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}

public func AppFONT(_ textSize:CGFloat) -> UIFont {
    if ScreenWidth <= 320 {
        return UIFont.systemFont(ofSize: textSize - 1.2)
    }else if ScreenWidth == 375 {
        return UIFont.systemFont(ofSize: textSize)
    }else if ScreenWidth > 375 {
        return UIFont.systemFont(ofSize: textSize + 1.2)
    }
    return UIFont.systemFont(ofSize: textSize)
}

public func AppBold_FONT(_ textSize:CGFloat) -> UIFont {
    if ScreenWidth <= 320 {
        return UIFont.boldSystemFont(ofSize: textSize - 1.2)
    }else if ScreenWidth == 375 {
        return UIFont.boldSystemFont(ofSize: textSize)
    }else if ScreenWidth > 375 {
        return UIFont.boldSystemFont(ofSize: textSize + 1.2)
    }
    return UIFont.boldSystemFont(ofSize: textSize)
}
