//
//  DXBaseXibButton.swift
//  DXUIKit
//
//  Created by 觅蓝科技 on 2020/11/3.
//

import UIKit

//@IBDesignable
public class DXBaseXibButton: UIButton {

    @IBInspectable public var autoFont : CGFloat{
        get{
            return 0
        }
        set{
            self.titleLabel?.font = AppFONT(newValue)
        }
    }
    @IBInspectable public var autoBoldFont : CGFloat{
        get{
            return 0
        }
        set{
            self.titleLabel?.font = AppBold_FONT(newValue)
        }
    }
    
    public override func awakeFromNib() {
       super.awakeFromNib()
       setupView()
    }
    
    func setupView() {
        
    }

}
