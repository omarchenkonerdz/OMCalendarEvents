//
//  EventManagerModel.swift
//  OMCalendarEvents
//
//  Created by Ostap Marchenko on 7/30/21.
//

import Foundation

public
struct EventModel: Codable {
    let startDate: Date
    let endDate: Date
    let title: String
    var description: String?
    var id: String?
    var location: String?
    var url: URL? /// only for native
    var alarmTime: Int? /// minutes before start date. If 0 - alarm off

    public
    init(
        start: Date,
        end: Date,
        title: String,
        id: String? = nil,
        description: String? = nil,
        location: String? = nil,
        url: URL? = nil,
        alarmTime: Int? = nil
    ) {
        self.id = id
        self.startDate = start
        self.endDate = end
        self.title = title
        self.description = description
        self.location = location
        self.url = url
        self.alarmTime = alarmTime
    }
}
