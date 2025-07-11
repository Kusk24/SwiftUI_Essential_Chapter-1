//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Win Yu Maung on 11/07/2025.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks){ landmark in
            LandmarkRow(landmark: landmark)
        }
//        List {
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//        }
    }
}

#Preview {
    LandmarkList()
}
