//
//  ScrumStore.swift
//  Scrumdinger
//
//  Created by Mike Cravey on 6/5/23.
//

import Foundation

class ScrumStore: ObservableObject {
    @Published var scrums: [DailyScrum] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        .appendingPathComponent("scrums.data")
    }
}
