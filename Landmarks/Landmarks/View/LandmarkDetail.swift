//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Win Yu Maung on 12/07/2025.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark : Landmark
    
    var body: some View {
        ScrollView {
            VStack{
                MapView(locationCoordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                
                CircleImage(image : landmark.image)
                    .offset(y:-130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                    
                    HStack{
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    
                    Divider()
                    
                    Text("About " + landmark.name)
                        .font(.title2)
                    
                    Text(landmark.description)
                    
                }.padding()
            }
        }
        
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
//        Spacer()
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
