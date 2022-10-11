//
//  EventsViewModel.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

class EventsViewModel: EventsViewModelContract {
    
    private let eventsViewInteractor: EventsViewInteractorContract
    
    init(eventsViewInteractor: EventsViewInteractorContract) {
        self.eventsViewInteractor = eventsViewInteractor
    }
    
    func getEvents() -> [Event] {
        return eventsViewInteractor.getEvents()
    }
}



