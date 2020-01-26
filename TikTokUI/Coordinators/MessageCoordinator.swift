//
//  MessageCoordinator.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/26.
//  Copyright © 2020 Mori. All rights reserved.
//

import SwinjectAutoregistration
import Swinject
import UIKit

final class MessageCoodinator: NavigationCoordinator {

    var navigationController: UINavigationController
    let resolver: Resolver

    init(presenter: UINavigationController, resolver: Resolver) {
        self.navigationController = presenter
        self.resolver = resolver
    }

    func start() {
        let messageViewContrller = MessageViewController.instantiate()
        self.navigationController.viewControllers = [messageViewContrller]
    }

    func navigate(fromLink: Bool) {

    }
}


