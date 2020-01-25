//
//  UserViewController.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/21.
//  Copyright © 2020 Mori. All rights reserved.
//

import XLPagerTabStrip
import Foundation
import RxSwift
import UIKit

final class UserViewController: ButtonBarPagerTabStripViewController, StoryboardInstantiate {

    static var storyboardName: StoryboardName = .User

    var pages: [UIViewController] = []

    @IBOutlet weak var userHeaderView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

