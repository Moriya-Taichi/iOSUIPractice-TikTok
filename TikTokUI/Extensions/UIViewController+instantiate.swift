//
//  UIViewController+instantiate.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/19.
//  Copyright © 2020 Mori. All rights reserved.
//

import UIKit

enum StoryboardName: String {
    case FeedTab = "FeedTabViewController"
    case Feed = "FeedViewController"
    case PostContent = "PostContentViewController"
    case User = "UserViewController"
    case UserFavorite = "UserFavoriteViewController"
    case UserPost = "UserPostViewController"
    case Trend = "TrendViewController"
    case Message = "MessageViewController"
    case Search = "SearchViewController"
}

protocol StoryboardInstantiate {
    static var storyboardName: StoryboardName { get }
}

extension StoryboardInstantiate where Self: UIViewController {
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: storyboardName.rawValue, bundle: nil)
        let viewControllerINstance = storyboard.instantiateViewController(withIdentifier: String(describing: self)) as! Self
        return viewControllerINstance
    }
}
