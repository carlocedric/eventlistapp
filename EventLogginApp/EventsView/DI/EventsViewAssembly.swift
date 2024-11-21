//
//  EventsViewAssembly.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import Swinject
import SwinjectAutoregistration

// EventsViewAssembly is responsible for assembling and registering the dependencies for the Events View.
class EventsViewAssembly: Assembly {
    func assemble(container: Container) {
        container.autoregister(EventsViewModelContract.self,
                               initializer: EventsViewModel.init)
        container.autoregister(EventsViewInteractorContract.self,
                               initializer: EventsViewInteractor.init)
    }
}

