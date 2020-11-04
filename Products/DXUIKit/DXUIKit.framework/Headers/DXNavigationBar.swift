//
//  DXNavigationBar.swift
//  NormalSwiftApp
//
//  Created by 觅蓝科技 on 2020/11/2.
//  Copyright © 2020 ilmeeself. All rights reserved.
//

import UIKit

public class DXNavigationBar: DXBaseView {

    public @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var leftItem: UIButton!
    @IBOutlet weak var rightItem: UIButton!
    @IBOutlet weak var mainTitle: UIButton!
    
    
    
    public override func awakeFromNib() {
       super.awakeFromNib()
       
    }
    
    override func setupView() {
        
    }
    
}
