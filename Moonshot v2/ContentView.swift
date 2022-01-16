//
//  ContentView.swift
//  Moonshot v2
//  New version is because the lesson has changed + I had stopped in the middle of the project. Starting over seemed ideal!
//
//  Created by Terry Thrasher on 2022-01-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let layout = [
            GridItem(.adaptive(minimum: 80, maximum: 120)),
            GridItem(.adaptive(minimum: 80, maximum: 120)),
            GridItem(.adaptive(minimum: 80, maximum: 120))
        ]
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
