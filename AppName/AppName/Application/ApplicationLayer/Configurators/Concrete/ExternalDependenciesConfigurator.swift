//
//  ExternalDependenciesConfigurator.swift
//  AppName
//
//  Created by incetro on 27/11/2019.
//  Copyright © 2019 Incetro Inc. All rights reserved.
//

import Sentry
import AppCenter
import AppCenterCrashes
import AppCenterAnalytics

// MARK: - ExternalDependenciesConfigurator

final class ExternalDependenciesConfigurator {

    /// AppNameConfiguration instance
    private let configuration: AppNameConfiguration

    /// Default initializer
    /// - Parameter configuration: AppNameConfiguration instance
    init(configuration: AppNameConfiguration) {
        self.configuration = configuration
    }

    // MARK: - Private

    private func setupAppCenter() {
        MSAppCenter.start(
            configuration.appCenterToken,
            withServices: [
                MSAnalytics.self,
                MSCrashes.self
            ]
        )
    }

    private func setupSentry() {
        SentrySDK.start { options in
            options.dsn = "dsn"
            options.debug = true
        }
    }
}

// MARK: - Configurator

extension ExternalDependenciesConfigurator: Configurator {

    func configure() {
    }
}
