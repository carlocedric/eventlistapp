//
//  EventsInteractor.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

class EventsViewInteractor: EventsViewInteractorContract {
    
    // Reference to the shared EventsManager to manage logs
    private let eventsManager = EventsManager.sharedInstance
    
    // retrieve events from the EventsManager
    func getEvents() -> [Event] {
        return eventsManager.getEvents()
    }
}

