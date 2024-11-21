//
//  HomeViewRouter.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import Swinject

class HomeViewRouter: BaseRouter {
    
    // Assembler used to resolve and inject dependencies for the Home View
    private let homeViewAssembler = Assembler([HomeViewAssembly()])
    
    // Start method to set up and display the Home view controller
    override func start() {
        if var homeViewModel = homeViewAssembler.resolver.resolve(HomeViewModelContract.self) {
            homeViewModel.router = self
            let homeViewController = HomeViewController(viewModel: homeViewModel)
            show(homeViewController)
        }
    }
    
    // Show the Events View screen
    func showEventsList() {
        let eventsRouter = EventsViewRouter(navigationController: self.navigationController)
        eventsRouter.start()
    }
}

