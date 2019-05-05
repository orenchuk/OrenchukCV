//
//  UIImageView+Extension.swift
//  OrenchukCV
//
//  Created by Yevhenii Orenchuk on 5/5/19.
//  Copyright © 2019 Yevhenii Orenchuk. All rights reserved.
//

import UIKit

extension UIView {
    
    func setRounded() {
        self.layer.cornerRadius = (self.frame.width / 2)
        self.layer.masksToBounds = true
    }
    
    func setDefaultRoundedStyle() {
        self.layer.cornerRadius = Constants.Radius.defaultLow
        self.layer.masksToBounds = true
    }
    
    func setDefaultOpacityRoundedStyle() {
        self.layer.cornerRadius = Constants.Radius.defaultMedium
        self.layer.masksToBounds = true
        self.layer.opacity = Constants.Opacity.defaultStrong
    }
}
