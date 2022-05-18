//
//  PrimaryButton.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct PrimaryButton: View {
    
    let image: Image
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Color.appRed
                    .cornerRadius(12)
                image
                    .frame(width: 28, height: 28)
            }
            .frame(width: 110, height: 50)
        }
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(image: .socials_vk, action: {})
            .previewLayout(.fixed(width: 375, height: 100))
    }
}
