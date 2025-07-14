//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Win Yu Maung on 19/05/2025.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
