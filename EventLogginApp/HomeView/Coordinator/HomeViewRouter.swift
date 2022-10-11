//
//  HomeViewRouter.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import Swinject

class HomeViewRouter: BaseRouter {
    
    private let homeViewAssembler = Assembler([HomeViewAssembly()])
    
    override func start() {
        if var homeViewModel = homeViewAssembler.resolver.resolve(HomeViewModelContract.self) {
            homeViewModel.router = self
            let homeViewController = HomeViewController(viewModel: homeViewModel)
            show(homeViewController)
        }
    }
    
    func showEventsList() {
        let eventsRouter = EventsViewRouter(navigationController: self.navigationController)
        eventsRouter.start()
    }
}

