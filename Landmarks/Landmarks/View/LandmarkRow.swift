//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Win Yu Maung on 11/07/2025.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark : Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundStyle(Color.yellow)
            } else {
                Image(systemName: "star")
                    .foregroundStyle(Color.yellow)
            }
        }
    }
}

#Preview("Turtle Rock") {
    Group {
        LandmarkRow(landmark: ModelData().landmarks[0])
        LandmarkRow(landmark: ModelData().landmarks[1])
    }
}

//#Preview("Salmon") {
//    LandmarkRow(landmark: landmarks[1])
//}
