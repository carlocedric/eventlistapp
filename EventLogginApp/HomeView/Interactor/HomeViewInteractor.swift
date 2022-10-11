//
//  HomeViewInteractor.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

class HomeViewInteractor: HomeViewInteractorContract {
    
    private let eventsManager = EventsManager.sharedInstance
    
    func logEvent(_ event: Event) {
        eventsManager.saveEvent(event)
    }
}
