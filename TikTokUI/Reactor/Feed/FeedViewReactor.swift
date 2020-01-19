//
//  FeedViewReactor.swift
//  TikTokUI
//
//  Created by Mori on 2020/01/20.
//  Copyright © 2020 Mori. All rights reserved.
//

import ReactorKit
import Foundation
import RxSwift

enum MainFeedContentType {
    case follow
    case recommend
}

final class FeedViewReactor: Reactor {

    var initialState: State

    enum Action {
        case load
    }

    enum Mutation {
        case setContentsInfo
        case setContentType
    }

    struct State {

    }

    init(contentType: MainFeedContentType) {
        initialState = State()
    }

}
