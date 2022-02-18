//
//  Bundle-Decodable.swift
//  Moonshot v2
//
//  Created by Terry Thrasher on 2022-02-17.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [String: Astronaut] {
        guard let url = self.url(forResource: file, withExtension: nil)
        else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url)
        else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([String: Astronaut].self, from data)
        else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
}
