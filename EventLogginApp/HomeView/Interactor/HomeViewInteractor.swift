//
//  HomeViewInteractor.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

class HomeViewInteractor: HomeViewInteractorContract {
    
    // Reference to the shared EventsManager to manage logs
    private let eventsManager = EventsManager.sharedInstance
    
    // Method to log an event by saving it through the EventsManager
    func logEvent(_ event: Event) {
        eventsManager.saveEvent(event)
    }
}
