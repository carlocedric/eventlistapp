//
//  EventCell.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import UIKit

class EventCell: UITableViewCell {
    static let identifier = "EventCell"
    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var subtitle: UILabel!

    func setup(with event: Event){
        self.mainTitle.text = "Button \(event.buttonTag) Presed"
        self.subtitle.text = event.timeStamp
        self.setBackgroundColor(with: event)
    }
    
    private func setBackgroundColor(with event: Event) {
        switch event.buttonTag {
        case 1: self.backgroundColor = .green.withAlphaComponent(0.1)
        case 2: self.backgroundColor = .red.withAlphaComponent(0.1)
        case 3: self.backgroundColor = .blue.withAlphaComponent(0.1)
        default: self.backgroundColor = .yellow.withAlphaComponent(0.1)
        }
    }
}

