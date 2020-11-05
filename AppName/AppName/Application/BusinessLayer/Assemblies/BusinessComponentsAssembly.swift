//
//  BusinessComponentsAssembly.swift
//  AppName
//
//  Created by incetro on 27/11/2019.
//  Copyright © 2019 Incetro Inc. All rights reserved.
//

import Swinject

// MARK: - BusinessComponentsAssembly

final class BusinessComponentsAssembly: CollectableAssembly {

    required init() {
    }

    func assemble(inContainer container: Container) {

        container.register(Localizer.self) { resolver in
            let defaults = resolver.resolve(UserDefaults.self).unwrap()
            return LocalizerImplementation(defaults: defaults)
        }.inObjectScope(.container)
    }
}
