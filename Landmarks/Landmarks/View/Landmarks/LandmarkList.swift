//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Win Yu Maung on 11/07/2025.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmark : [Landmark] {
        modelData.landmarks.filter{ landmark in
            (!showFavoritesOnly||landmark.isFavorite)
            
        }
    }
    
    var body: some View {

        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoritesOnly) {
                Text("Show Favorite Only")
                        }
                
                ForEach(filteredLandmark){landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label : {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmark)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
