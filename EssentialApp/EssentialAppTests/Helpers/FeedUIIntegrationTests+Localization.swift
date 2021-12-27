//
//  FeedUIIntegrationTests+Localization.swift
//  EssentialFeediOSTests
//
//  Created by Arifin Firdaus on 10/08/21.
//  Copyright © 2021 arifinfrds. All rights reserved.
//

import Foundation
import XCTest
import EssentialFeed

extension FeedUIIntegrationTests {
    
    private class DummyView: ResourceView {
         func display(_ viewModel: Any) {}
     }

     var loadError: String {
         LoadResourcePresenter<Any, DummyView>.loadError
     }

     var feedTitle: String {
         FeedPresenter.title
     }
}
