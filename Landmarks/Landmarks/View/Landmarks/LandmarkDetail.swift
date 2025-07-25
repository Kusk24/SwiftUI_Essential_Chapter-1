//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Win Yu Maung on 12/07/2025.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    
    var landmark : Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            VStack{
                MapView(locationCoordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                
                CircleImage(image : landmark.image)
                    .offset(y:-130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    
                    HStack{
                        Text(landmark.name)
                            .font(.title)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    
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
    let  modelData = ModelData()
    return LandmarkDetail(landmark: ModelData().landmarks[0])
        .environment(modelData)
}
