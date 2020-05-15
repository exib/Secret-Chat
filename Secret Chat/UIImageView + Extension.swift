//
//  UIImageView + Extension.swift
//  Secret Chat
//
//  Created by Andrey Goncharov on 15.05.2020.
//  Copyright © 2020 Andrey Goncharov. All rights reserved.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}
