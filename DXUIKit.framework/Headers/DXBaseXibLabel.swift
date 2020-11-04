//
//  DXBaseXibLabel.swift
//  DXUIKit
//
//  Created by 觅蓝科技 on 2020/11/3.
//

import UIKit

public class DXBaseXibLabel: UILabel {

    @IBInspectable public var autoFont : CGFloat{
        get{
            return 0
        }
        set{
            self.font = AppFONT(newValue)
        }
    }
    @IBInspectable public var autoBoldFont : CGFloat{
        get{
            return 0
        }
        set{
            self.font = AppBold_FONT(newValue)
        }
    }
    
    
    public override func awakeFromNib() {
       super.awakeFromNib()
       setupView()
    }
    
    func setupView() {
        
    }

}
