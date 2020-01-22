//
//  SearchViewController.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/21.
//  Copyright © 2020 Mori. All rights reserved.
//

import Foundation
import RxSwift
import UIKit

final class SearchViewController: UIViewController, StoryboardInstantiate {

    static var storyboardName: StoryboardName = .Search

    @IBOutlet weak var searchResultCollectionView: UICollectionView!
    @IBOutlet weak var headerContainerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
