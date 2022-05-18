//
//  MiddleView.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct MiddleView: View {
    
    let image: Image
    
    var body: some View {
        VStack(spacing: .zero) {
            ZStack {
                Color.appWhite
                    .cornerRadius(16)
                    .shadow(color: .appGrey, radius: 2, x: 0, y: 4)
                image
            }
            .frame(width: 50, height: 44)
        }
    }
}

struct MiddleView_Previews: PreviewProvider {
    static var previews: some View {
        MiddleView(image: .map_points)
            .previewLayout(.fixed(width: 50, height: 44))
    }
}
