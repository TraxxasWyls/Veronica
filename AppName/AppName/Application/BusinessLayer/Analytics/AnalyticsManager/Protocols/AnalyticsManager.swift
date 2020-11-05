//
//  AnalyticsManager.swift
//  AppName
//
//  Created by incetro on 17/03/2020.
//  Copyright © 2020 AppName. All rights reserved.
//

import Foundation

// MARK: - AnalyticsManager

protocol AnalyticsManager {

    /// Log some analytics event
    ///
    /// - Parameter event: some event
    func log(_ event: AnalyticsEvent)
}
