//
//  Missions.swift
//  Moonshot v2
//
//  Created by Terry Thrasher on 2022-02-17.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
