//
//  Event.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//

import Foundation
import RealmSwift

class Event: Object {
    @Persisted(primaryKey: true) var id: Int = UUID().hashValue
    @Persisted var buttonTag: Int = 0
    @Persisted var date: Date = Date()
    var timeStamp: String {
        get {
             return date.formatted(date: .abbreviated, time: .standard)
        }
    }
}
