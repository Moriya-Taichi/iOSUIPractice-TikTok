//
//  UIView+loadNib.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/22.
//  Copyright © 2020 Mori. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func loadNib() {
        if let view = Bundle.main.loadNibNamed(String(describing: type(of: self)),
                                               owner: self,
                                               options: nil)?
            .first as? UIView
        {
            view.frame = self.bounds
            self.addSubview(view)
        }
    }
}
