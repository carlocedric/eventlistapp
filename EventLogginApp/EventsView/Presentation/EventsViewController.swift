//
//  EventsViewController.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import UIKit

class EventsViewController: UIViewController {
    
    private var viewModel: EventsViewModelContract?
    private var savedEvents: [Event] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    init(viewModel: EventsViewModelContract) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadEvents()
        setupTable()
    }
    
    private func setupTable() {
        tableView.register(UINib(nibName: EventCell.identifier, bundle: nil),
                           forCellReuseIdentifier: EventCell.identifier)
        tableView.dataSource = self
    }
    
    private func loadEvents() {
        savedEvents = viewModel?.getEvents() ?? []
    }
}

extension EventsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        savedEvents.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: EventCell.identifier) as! EventCell
        let event = savedEvents[indexPath.row]
        cell.setup(with: event)
        return cell
    }
}
