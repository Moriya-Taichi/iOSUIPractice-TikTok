//
//  MainFeedMovieCell.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/19.
//  Copyright © 2020 Mori. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import UIKit

final class MainFeedMovieCell: UITableViewCell {

    @IBOutlet weak var movieView: UIImageView!

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var userNameScrollLabel: UILabel!
    
    @IBOutlet weak var userIconButton: UIButton!
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var musicButton: UIButton!


    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var commentCountLabel: UILabel!
    @IBOutlet weak var shareCountLabel: UILabel!

    struct Callback {
        let showUser: ((_ userIdentifier: String) -> Void)
        let showComment: ((_ postIdentifier: String) -> Void)
        let showShare: ((_ postIdentifier: String) -> Void)
        let showSameMusic: ((_ musicIdentifier: String) -> Void)
    }

    var callback: Callback?
    var disposeBag = DisposeBag()

    override func awakeFromNib() {
        super.awakeFromNib()
        setupRx()
    }

    private func setupRx() {
        userIconButton.rx.tap
            .subscribe(onNext: {[weak self] _ in
                self?.callback?.showUser("hoge")
            }).disposed(by: disposeBag)

        commentButton.rx.tap
            .subscribe(onNext: {[weak self] _ in
                self?.callback?.showComment("hoge")
            }).disposed(by: disposeBag)

        shareButton.rx.tap
            .subscribe(onNext: {[weak self] _ in
                self?.callback?.showShare("hoge")
            }).disposed(by: disposeBag)

        musicButton.rx.tap
            .subscribe(onNext: {[weak self] _ in
                self?.callback?.showSameMusic("hoge")
            }).disposed(by: disposeBag)
    }

    func setCellContents() {

    }
}
