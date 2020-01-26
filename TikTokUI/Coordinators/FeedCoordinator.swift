//
//  FeedCoordinator.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/26.
//  Copyright © 2020 Mori. All rights reserved.
//

import SwinjectAutoregistration
import Swinject
import UIKit

final class FeedCoordinator: NavigationCoordinator {

    let navigationController: UINavigationController
    let resolver: Resolver

    init(presenter: UINavigationController, resolver: Resolver) {
        self.resolver = resolver
        self.navigationController = presenter
    }

    func start() {
        let feedTabViewController = FeedTabViewController.instantiate()
        let recommendFeedViewController = FeedViewController.instantiate()
        let followFeedViewController = FeedViewController.instantiate()

        feedTabViewController.pages = [recommendFeedViewController, followFeedViewController]
        self.navigationController.viewControllers = [feedTabViewController]
    }

    func navigate(fromLink: Bool) {

    }
}
