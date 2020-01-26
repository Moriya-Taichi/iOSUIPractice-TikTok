//
//  CoordinatorsProtocol.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/26.
//  Copyright © 2020 Mori. All rights reserved.
//

import Foundation
import Swinject
import UIKit

protocol Coordinator: class {
    var resolver: Resolver { get }
    func start()
    func navigate(fromLink: Bool)
}

protocol ContainerCoordinator: Coordinator {
    var presenter: UIViewController { get }
}

protocol NavigationCoordinator: ContainerCoordinator {
    var navigationController: UINavigationController { get }
}

extension NavigationCoordinator {
    var presenter: UIViewController { return navigationController }
}

protocol TabCoordinator: ContainerCoordinator {
    var tabBarController: UITabBarController { get }
}

extension TabCoordinator {
    var presenter: UIViewController { return tabBarController }
}
