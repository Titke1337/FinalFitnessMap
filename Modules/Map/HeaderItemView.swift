//
//  HeaderItemView.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct HeaderItemView: View {
    
    let title: String
    let image: Image
    
    var body: some View {
        ZStack {
            Color.appRed
                .cornerRadius(100)
            HStack {
                Text(title)
                    .foregroundColor(.appWhite)
                    .font(.system(size: 17, weight: .bold))
                image
            }
        }
        .frame(width: 61, height: 30)
    }
}

struct HeaderItemView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderItemView(title: "4.7", image: .map_star)
            .previewLayout(.fixed(width: 100 , height: 100))
    }
}
