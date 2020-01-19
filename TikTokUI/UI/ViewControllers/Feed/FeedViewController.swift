//
//  FeedViewController.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/19.
//  Copyright © 2020 Mori. All rights reserved.
//

import ReactorKit
import Foundation
import RxSwift
import UIKit

final class FeedViewController: UIViewController, StoryboardInstantiate {

    static var storyboardName: StoryboardName = .Feed
    var callback: Callback?
    var disposeBag = DisposeBag()

    struct Callback {
        let showUser: ((_ userIdentifier: String) -> Void)
        let showComment: ((_ postIdentifier: String) -> Void)
        let showShare: ((_ postIdentifier: String) -> Void)
        let showSameMusic: ((_ musicIdentifier: String) -> Void)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension FeedViewController: StoryboardView {
    func  bind(reactor: FeedViewReactor) {

    }
}
