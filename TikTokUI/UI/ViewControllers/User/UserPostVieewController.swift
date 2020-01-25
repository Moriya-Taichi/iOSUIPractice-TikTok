//
//  UserPostVieewController.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/23.
//  Copyright © 2020 Mori. All rights reserved.
//

import ReactorKit
import Foundation
import RxSwift
import UIKit

final class UserPostViewController: UIViewController, StoryboardInstantiate {

    static var storyboardName: StoryboardName = .UserPost

    @IBOutlet weak var postedContentsCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
