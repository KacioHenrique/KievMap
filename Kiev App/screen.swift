//
//  screen.swift
//  Kiev App
//
//  Created by kacio henrique couto batista on 20/01/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import Foundation
import UIKit

class MyView: UIView {
    //-----------------------------------------------------------------------------------------------------
    //-----------------------------------------------------------------------------------------------------
    override init(frame: CGRect) {
        super.init(frame: frame)
        didLoad()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        didLoad()
    }
    
    func didLoad() {
       self.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //Custom manually positioning layout goes here (auto-layout pass has already run first pass)
    }
    
    override func updateConstraints() {
    }
}
