//
//  HomeViewModelContract.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

protocol HomeViewModelContract {
    var router: RouterContract? { get set }
    
    // log an event using the interactor
    func logEvent(_ event: Event)
    
    // show the events list
    func showEventsList()
}
