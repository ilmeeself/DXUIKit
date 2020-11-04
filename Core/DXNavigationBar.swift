//
//  DXNavigationBar.swift
//  NormalSwiftApp
//
//  Created by 觅蓝科技 on 2020/11/2.
//  Copyright © 2020 ilmeeself. All rights reserved.
//

import UIKit

public class DXNavigationBar: DXBaseXibView {

    @IBOutlet public weak var contentView: DXBaseXibView!
    @IBOutlet public weak var leftItem: DXBaseXibButton!
    @IBOutlet public weak var rightItem: DXBaseXibButton!
    @IBOutlet public weak var mainTitle: DXBaseXibButton!
    
    public var contentBgImageView : UIImageView!
    
    
    internal override func setupView() {
        contentBgImageView = UIImageView()
        addSubview(contentBgImageView)
        contentBgImageView.snp.makeConstraints { (make) in
            make.left.bottom.right.top.equalTo(0)
        }
    }
    
    
    
}
