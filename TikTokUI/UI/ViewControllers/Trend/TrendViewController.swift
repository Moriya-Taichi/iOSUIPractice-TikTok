//
//  TrendViewController.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/24.
//  Copyright © 2020 Mori. All rights reserved.
//

import ReactorKit
import Foundation
import RxSwift
import UIKit

final class TrendViewController: UIViewController, StoryboardInstantiate {

    static var storyboardName: StoryboardName = .Trend

    @IBOutlet weak var trendTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
