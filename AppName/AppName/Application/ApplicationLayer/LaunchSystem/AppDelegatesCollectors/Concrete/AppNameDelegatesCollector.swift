//
//  AppNameDelegatesCollector.swift
//  AppName
//
//  Created by incetro on 27/11/2019.
//  Copyright © 2019 Incetro Inc. All rights reserved.
//

import Foundation

// MARK: - AppNameDelegatesCollector

final class AppNameDelegatesCollector {
}

// MARK: - AppDelegatesCollector

extension AppNameDelegatesCollector: AppDelegatesCollector {

    func delegates() -> [AppDelegateHandler] {
        AppNameAssembliesCollector.collect()
        let delegates = AssembliesHolder.container.resolve([AppDelegateHandler].self).unwrap()
        return delegates
    }
}
