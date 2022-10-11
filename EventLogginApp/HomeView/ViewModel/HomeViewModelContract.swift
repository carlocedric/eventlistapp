//
//  HomeViewModelContract.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

protocol HomeViewModelContract {
    var router: RouterContract? { get set }
    func logEvent(_ event: Event)
    func showEventsList()
}
