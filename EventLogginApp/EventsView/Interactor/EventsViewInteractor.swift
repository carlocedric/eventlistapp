//
//  EventsInteractor.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

class EventsViewInteractor: EventsViewInteractorContract {
    
    private let eventsManager = EventsManager.sharedInstance
    
    func getEvents() -> [Event] {
        return eventsManager.getEvents()
    }
}

