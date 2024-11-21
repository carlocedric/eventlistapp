//
//  EventsViewRouter.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//
import Swinject

class EventsViewRouter: BaseRouter {
    // Assembler used to resolve and inject dependencies for the Events View
    private let eventsViewAssembler = Assembler([EventsViewAssembly()]);
    
    // Start method to set up and display the Events view controller
    override func start() {
        if let eventsViewModel = eventsViewAssembler.resolver.resolve(EventsViewModelContract.self) {
            let eventsViewController = EventsViewController(viewModel: eventsViewModel)
            show(eventsViewController)
        }
    }
}
