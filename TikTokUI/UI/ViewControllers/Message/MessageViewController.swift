//
//  MessageViewController.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/21.
//  Copyright © 2020 Mori. All rights reserved.
//

import Foundation
import RxSwift
import UIKit

final class MessageViewController: UIViewController, StoryboardInstantiate {

    static var storyboardName: StoryboardName = .Message

    @IBOutlet weak var messageTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
