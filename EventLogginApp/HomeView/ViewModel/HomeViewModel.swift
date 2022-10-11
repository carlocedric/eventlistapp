//
//  HomeViewModel.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

class HomeViewModel: HomeViewModelContract {
    
    private let homeViewInteractor: HomeViewInteractorContract
    var router: RouterContract?
    
    init(homeViewInteractor: HomeViewInteractorContract) {
        self.homeViewInteractor = homeViewInteractor
    }
    
    func logEvent(_ event: Event) {
        self.homeViewInteractor.logEvent(event)
    }
    
    func showEventsList() {
        if let router = router as? HomeViewRouter {
            router.showEventsList()
        }
    }
}
