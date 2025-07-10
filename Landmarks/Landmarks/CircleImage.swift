//
//  CircleImage.swift
//  Landmarks
//
//  Created by Win Yu Maung on 11/07/2025.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
