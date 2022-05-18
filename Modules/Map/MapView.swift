//
//  MapView.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct MapView: View {
    
    let image: Image
    
    var body: some View {
        ZStack {
            image
                .cornerRadius(16)
                .shadow(color: .appGrey, radius: 1, x: 1, y: 1)
            VStack {
                HeaderView(title: "Рейтинг на Яндекс Картах", ratingCount: "447 оценок", buttonTitle: "Смотреть отзывы", action: {})
                Spacer()
                MiddleView(image: .map_points)
                Spacer()
                BottomView(title: "Написать отзыв", action: {})
            }
            .padding()
        }
        .frame(width: 375, height: 399)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(image: .map_map)
            .previewLayout(.fixed(width: 375, height: 500))
    }
}
