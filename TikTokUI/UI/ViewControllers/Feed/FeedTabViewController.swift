//
//  FeedTabViewController.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/19.
//  Copyright © 2020 Mori. All rights reserved.
//

import XLPagerTabStrip
import Foundation
import RxSwift
import UIKit

final class FeedTabViewController: ButtonBarPagerTabStripViewController, StoryboardInstantiate {

    static var storyboardName: StoryboardName = .FeedTab

    var pages: [UIViewController] = [] //ReactorやVMに持たせたくないけどVarで外部から渡すのもキモいと思う
    var disposeBag = DisposeBag()
    var callback: Callback?

    struct Callback {

    }

    override func viewDidLoad() {
        setupPagerTabBar()
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.barTintColor = .clear
    }

    override  func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        return pages
    }

    private func setupPagerTabBar() {
        settings.style.buttonBarBackgroundColor = .clear
        settings.style.buttonBarItemBackgroundColor = .clear
        settings.style.selectedBarBackgroundColor = .clear
        settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 16, weight: .medium)
        settings.style.selectedBarHeight = 3.0
        settings.style.buttonBarMinimumLineSpacing = -1
        settings.style.buttonBarItemTitleColor = .white
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
    }
}
