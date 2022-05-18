//
//  BottomView.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct BottomView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        HStack {
            Button(action: action) {
                
                ZStack {
                    Color.appWhite
                        .cornerRadius(16)
                        .shadow(color: .appGrey, radius: 2, x: 0, y: 4)
                    Text(title)
                        .foregroundColor(.appBlack)
                        .font(.system(size: 15, weight: .medium))
                }
                .frame(width: 224, height: 44)
            }
            BottomItemView(title: .map_route, action: {})
            BottomItemView(title: .map_location, action: {})
        }
    }
}


struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView(title: "Написать отзыв", action: {})
            .previewLayout(.fixed(width: 375, height: 200))
    }
}
