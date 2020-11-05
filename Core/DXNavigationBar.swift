//
//  DXNavigationBar.swift
//  NormalSwiftApp
//
//  Created by 觅蓝科技 on 2020/11/2.
//  Copyright © 2020 ilmeeself. All rights reserved.
//

import UIKit

public class DXNavigationBar: DXBaseXibView {

    @IBOutlet public weak var contentView: UIView!
    @IBOutlet public weak var leftItem: UIButton!
    @IBOutlet public weak var rightItem: UIButton!
    @IBOutlet public weak var mainTitle: UIButton!
    
    public var contentBgImageView : UIImageView!
    
    public class func loadSelfXib() -> DXNavigationBar{
        
        return DXBundleManager.DXBundle().loadNibNamed("DXNavigationBar", owner: nil, options: nil)?.last as! DXNavigationBar
        
    }
    
    internal override func setupView() {
        contentBgImageView = UIImageView()
        addSubview(contentBgImageView)
        contentBgImageView.snp.makeConstraints { (make) in
            make.left.bottom.right.top.equalTo(0)
        }
    }
    
    
    
}
