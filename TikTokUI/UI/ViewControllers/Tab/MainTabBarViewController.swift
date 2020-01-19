//
//  MainTabBarViewController.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/19.
//  Copyright © 2020 Mori. All rights reserved.
//

import RxSwift
import RxCocoa
import UIKit

final class MainTabBarViewController: UITabBarController {

    var callback: Callback?
    var disposeBag = DisposeBag()

    struct Callback {
        let showPostContent: (() -> Void)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupRx()
    }

    private func setupRx() {
        self.rx.didSelect
            .map { $0 as? UINavigationController }
            .filter { $0?.viewControllers.first as? PostContentViewController != nil }
            .subscribe(onNext: {[weak self] _ in
                self?.callback?.showPostContent()
            }).disposed(by: disposeBag)
    }
}
