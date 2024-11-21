//
//  EventsManager.swift
//  EventLogginApp
//
//  Created by Carlo Cedric Lijauco on 10/11/22.
//
import RealmSwift

final class EventsManager {
    
    static let sharedInstance = EventsManager()
    
    private init() {}
    
    // Method to save an event to the Realm database
    func saveEvent(_ event: Event) {
        let realm = try! Realm()
        try! realm.write {
            realm.add(event)
        }
        debugPrint("save event:\(event)")
    }
    
    // Method to fetch all events from the Realm database, sorted by date in descending order
    func getEvents() -> [Event] {
        let realm = try! Realm()
        return realm.objects(Event.self).sorted(by: { $0.date > $1.date})
    }
}
