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
        GeometryReader { geo in
            Image("landscape_4")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8, height: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
