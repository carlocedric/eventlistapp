//
//  HomeViewController.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var viewModel: HomeViewModelContract?
    
    init(viewModel: HomeViewModelContract) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Logs the event and shows the events list
    @IBAction func logEvent(_ sender: UIButton) {
        let event = Event()
        event.buttonTag = sender.tag
        self.viewModel?.logEvent(event)
        self.viewModel?.showEventsList()
    }
    
}
