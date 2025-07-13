//
//  ContentView.swift
//  Landmarks
//
//  Created by Win Yu Maung on 19/05/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
