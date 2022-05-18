//
//  HeaderView.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let ratingCount: String
    let buttonTitle: String
    let action: () -> Void
    
    var body: some View {
        ZStack {
            Color.appWhite
                .cornerRadius(12)
                .shadow(color: Color.appGrey, radius: 2, x: 0, y: 4)
            VStack {
                HStack {
                    Text(title)
                        .font(.system(size: 16, weight: .medium))
                    Spacer()
                    HeaderItemView(title: "4.7", image: .map_star)
                } .padding(.horizontal, 16)
                HStack {
                    Text(ratingCount)
                        .foregroundColor(.appGrey)
                        .font(.system(size: 15))
                    Button(action: action) {
                        Text(buttonTitle)
                            .foregroundColor(.appRed)
                            .font(.system(size: 15, weight: .medium))
                        Spacer()
                    }
                }
                .padding(.horizontal, 16)
            }
        }  .frame(width: 359, height: 76, alignment: .leading)
            
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Рейтинг на Яндекс Картах", ratingCount: "447 оценок", buttonTitle: "Смотреть отзывы", action: {})
            .previewLayout(.fixed(width: 375, height: 200))
    }
}
