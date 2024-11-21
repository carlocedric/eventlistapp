//
//  Event.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import Foundation
import RealmSwift

class Event: Object {
    // `id` is a unique identifier for each event
    @Persisted(primaryKey: true) var id: Int = UUID().hashValue
    
    // `buttonTag` stores an integer value associated with the event. (to identify button 1 to 4)
    @Persisted var buttonTag: Int = 0
    
    // `date` represents the date when the event occurred.
    @Persisted var date: Date = Date()
    
    // `timeStamp` is a computed property that formats the `date` property into a string
    var timeStamp: String {
        get {
             return date.formatted(date: .abbreviated, time: .standard)
        }
    }
}
