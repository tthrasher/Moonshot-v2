//
//  ContentView.swift
//  Moonshot v2
//  New version is because the lesson has changed + I had stopped in the middle of the project. Starting over seemed ideal!
//
//  Content is sourced from Wikipedia under a Creative Commons license: https://creativecommons.org/licenses/by-sa/3.0/
//
//  Created by Terry Thrasher on 2022-01-02.
//

import SwiftUI

struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text("\(astronauts.count)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
