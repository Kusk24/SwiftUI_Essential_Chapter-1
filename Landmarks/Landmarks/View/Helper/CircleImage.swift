//
//  CircleImage.swift
//  Landmarks
//
//  Created by Win Yu Maung on 11/07/2025.
//

import SwiftUI

struct CircleImage: View {
    
    var image : Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: ModelData().landmarks[2].image)
}
