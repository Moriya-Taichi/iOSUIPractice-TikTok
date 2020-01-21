//
//  TrendFeedCell.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/20.
//  Copyright © 2020 Mori. All rights reserved.
//

import ReactorKit
import Foundation
import RxSwift
import UIKit

final class TrendFeedCell: UITableViewCell {

    @IBOutlet weak var trendMovieCollectionView: UICollectionView!
    @IBOutlet weak var trendWordLabel: UILabel!
    @IBOutlet weak var postCountLabel: UILabel!

    var disposeBag = DisposeBag()

    override func awakeFromNib() {
        super.awakeFromNib()
    }

}

extension TrendFeedCell: StoryboardView {
    func bind(reactor: TrendFeedCellReactor) {

    }
}
