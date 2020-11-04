//
//  UIScreenHeader.swift
//  NormalSwiftApp
//
//  Created by 觅蓝科技 on 2020/11/2.
//  Copyright © 2020 ilmeeself. All rights reserved.
//

import Foundation
import UIKit

// MARK: 全局常量
public let ScreenWidth = UIScreen.main.bounds.width
public let ScreenHeight = UIScreen.main.bounds.height
/** 宽度比例 */
public let widthScale = ScreenWidth / 375
/** 高度比例 */
public let heightScale = ScreenHeight / 667
/** 状态栏高度 */
public let StatusBarHeight = UIApplication.shared.statusBarFrame.height
/** iphoneX 底部间距 */
public let iphoneXBottomSafeHeight: CGFloat = 34
/**导航栏高度*/
public let navHeight: CGFloat = (isiPhoneX || isiPhoneXRAndXSMAX || isiPhoneXS) ? 88 : 64
/**导航栏多出高度*/
public let navHeightMore: CGFloat = (isiPhoneX || isiPhoneXRAndXSMAX || isiPhoneXS) ? 24 : 0
/**tabbar高度*/
public let tabbarHeight: CGFloat = (isiPhoneX || isiPhoneXRAndXSMAX || isiPhoneXS) ? 83 : 49
/**tabbar多出高度*/
public let tabbarHeightMore: CGFloat = (isiPhoneX || isiPhoneXRAndXSMAX || isiPhoneXS) ? 34 : 0
// MARK: 判断设备
public let isiPhoneXRAndXSMAX: Bool = (ScreenWidth == 414 && ScreenHeight == 896)
public let isiPhoneXS: Bool = (ScreenWidth == 375 && ScreenHeight == 812)
public let isiPhoneX: Bool = (ScreenWidth == 375 && ScreenHeight == 812)
public let isiPhone5: Bool = (ScreenWidth == 320 && ScreenHeight == 568)
public let isiPhone5Below: Bool = (ScreenWidth <= 320 && ScreenHeight <= 568)
public let isIphonePuls: Bool = (ScreenWidth == 375 || ScreenWidth == 414)

public let tett = 88
