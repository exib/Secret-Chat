//
//  StackView + Extension.swift
//  Secret Chat
//
//  Created by Andrey Goncharov on 15.05.2020.
//  Copyright © 2020 Andrey Goncharov. All rights reserved.
//

import UIKit

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
}
