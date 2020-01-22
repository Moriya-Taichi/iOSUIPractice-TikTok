//
//  SearchHeaderView.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/22.
//  Copyright © 2020 Mori. All rights reserved.
//

import ReactorKit
import Foundation
import RxSwift
import UIKit

final class SearchHeaderView: UIView {

    @IBOutlet weak var searchTagImageView: UIImageView!
    @IBOutlet weak var searchTagLabel: UILabel!
    @IBOutlet weak var searchTagWatchCountLabel: UILabel!
    @IBOutlet weak var storeButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var openDescriptionLabelButton: UIButton!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
}
