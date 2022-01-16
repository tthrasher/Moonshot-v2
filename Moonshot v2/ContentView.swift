//
//  ContentView.swift
//  Moonshot v2
//  New version is because the lesson has changed + I had stopped in the middle of the project. Starting over seemed ideal!
//
//  Created by Terry Thrasher on 2022-01-02.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            Button("Decode JSON") {
                let input = """
                {
                    "name": "Taylor Swift",
                    "address": {
                        "street": "555 Awesome Street",
                        "city": "Nashville"
                    }
                }
                """
                
                let data = Data(input.utf8)
                let decoder = JSONDecoder()
                if let user = try? decoder.decode(User.self, from: data) {
                    print(user.address.street)
                }
            }
            List(0..<100) { row in
                NavigationLink {
                    Text("Detail \(row)")
                } label: {
                    Text("Row \(row)")
                }
                .navigationTitle("SwiftUI")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
