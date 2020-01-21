//
//  TrendFeedCellReactor.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/21.
//  Copyright © 2020 Mori. All rights reserved.
//

import ReactorKit
import Foundation
import RxSwift

final class TrendFeedCellReactor: Reactor {

    var initialState: State

    enum Action {
        case load
    }

    struct State {

    }

    init() {
        initialState = State()
    }
}
