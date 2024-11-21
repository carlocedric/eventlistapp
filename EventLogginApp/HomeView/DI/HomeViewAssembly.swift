//
//  HomeViewAssembly.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import Swinject
import SwinjectAutoregistration

// HomeViewAssembly is responsible for assembling and registering the dependencies for the Home View.
class HomeViewAssembly: Assembly {
    func assemble(container: Container) {
        container.autoregister(HomeViewModelContract.self,
                               initializer: HomeViewModel.init)
        container.autoregister(HomeViewInteractorContract.self,
                               initializer: HomeViewInteractor.init)
    }
}
