//
//  UserFavoriteViewController.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/23.
//  Copyright © 2020 Mori. All rights reserved.
//

import ReactorKit
import Foundation
import RxSwift
import UIKit

final class UserFavoriteViewController: UIViewController, StoryboardInstantiate {

    static var storyboardName: StoryboardName = .UserFavorite
    
    @IBOutlet weak var favoriteCOntentsCollectionVIew: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
