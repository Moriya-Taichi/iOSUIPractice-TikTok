//
//  UserCoodinator.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/26.
//  Copyright © 2020 Mori. All rights reserved.
//

import SwinjectAutoregistration
import Swinject
import UIKit

final class UserCoodinator: NavigationCoordinator {

    var navigationController: UINavigationController
    let resolver: Resolver

    init(presenter: UINavigationController, resolver: Resolver) {
        self.navigationController = presenter
        self.resolver = resolver
    }

    func start() {
        let userTabViewController = UserViewController.instantiate()
        let userFavoriteViewController = UserFavoriteViewController.instantiate()
        let userPostViewController = UserPostViewController.instantiate()

        userTabViewController.pages = [userPostViewController, userFavoriteViewController]
        self.navigationController.viewControllers = [userTabViewController]
    }

    func navigate(fromLink: Bool) {

    }
}
