//
//  MainTabBarCoordinator.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/20.
//  Copyright © 2020 Mori. All rights reserved.
//

import SwinjectAutoregistration
import Foundation
import Swinject
import UIKit

final class MaintabBarCoordinator: TabCoordinator {

    let tabBarController: UITabBarController
    let resolver: Resolver

    private var childCoordinators: [NavigationCoordinator] = []

    init(presenter: UITabBarController, resolver: Resolver) {
        self.tabBarController =  presenter
        self.resolver  = resolver
    }

    func start() {
        if let mainTabBar = tabBarController as? MainTabBarViewController {
            mainTabBar.callback = MainTabBarViewController.Callback (
                showPostContent: {

                }
            )
        }

        childCoordinators = setupChildCoordinators()
        tabBarController.viewControllers = childCoordinators.map { $0.presenter }
        childCoordinators.forEach { $0.start() }
    }

    func navigate(fromLink: Bool) {
        //DeepLink Navigation
    }
}

extension MaintabBarCoordinator {
    private func setupChildCoordinators() -> [NavigationCoordinator] {
        let feedCoordinator = FeedCoordinator(presenter: .init(), resolver: resolver)
        let messageCoordinator = MessageCoordinator(presenter: .init(), resolver: resolver)
        let userCoordinator = MessageCoordinator(presenter: .init(), resolver: resolver)
        let trendCoordinator = TrendCoordinator(presenter: .init(), resolver: resolver)

        return [feedCoordinator, trendCoordinator, messageCoordinator, userCoordinator]
    }
}
