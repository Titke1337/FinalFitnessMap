//
//  TopSideHeader.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 18.05.2022.
//

import SwiftUI

struct TopSideHeader: View {
    
    let picture: Image
    let imagePoints: Image
    let imageMetro: Image
    let company: String
    let street: String
    let adress: String
    let metro: String
    
    var body: some View {
        VStack {
            picture
                .ignoresSafeArea()
                .padding(.bottom, 14)
            //не пойму как сюда офрмить закругленные края, возможно лучше это сделать уже на верстке всего экрана
            VStack(alignment: .leading) {
                HStack {
                    Text(company)
                        .font(.system(size: 15, weight: .bold))
                    Spacer()
                    imagePoints
                }
                Text(street)
                    .frame(height: 34)
                    .font(.system(size: 28, weight: .bold))
                Text(adress)
                    .foregroundColor(.appTextBlack)
                    .font(.system(size: 17))

                Divider()
                HStack {
                    imageMetro
                    Text(metro)
                        .font(.system(size: 17))
                }
                Divider()
            }
            .padding(.horizontal, 14)
        }
        .frame(width: 375, height: 418)
    }
}

struct TopSideHeader_Previews: PreviewProvider {
    static var previews: some View {
        TopSideHeader(picture: .reel_picture, imagePoints: .locCard_points, imageMetro: .locCard_metro, company: "ТЕРРИТОРИЯ ФИТНЕСА", street: "Братиславская", adress: "Марьино, Перервинский б-р, д. 4, корп. 1", metro: "Братиславкая, Люблино, Марьино")
            .previewLayout(.fixed(width: 375, height: 450))
    }
}
