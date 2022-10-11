//
//  EventsViewAssembly.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import Swinject
import SwinjectAutoregistration

class EventsViewAssembly: Assembly {
    func assemble(container: Container) {
        container.autoregister(EventsViewModelContract.self,
                               initializer: EventsViewModel.init)
        container.autoregister(EventsViewInteractorContract.self,
                               initializer: EventsViewInteractor.init)
    }
}

