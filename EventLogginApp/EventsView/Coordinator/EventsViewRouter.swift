//
//  EventsViewRouter.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//
import Swinject

class EventsViewRouter: BaseRouter {
    
    private let eventsViewAssembler = Assembler([EventsViewAssembly()]);
    
    override func start() {
        if let eventsViewModel = eventsViewAssembler.resolver.resolve(EventsViewModelContract.self) {
            let eventsViewController = EventsViewController(viewModel: eventsViewModel)
            show(eventsViewController)
        }
    }
}
