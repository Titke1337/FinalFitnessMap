//
//  BottomItemView.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct BottomItemView: View {
    
    let title: Image
    let action: () -> Void
    
    var body: some View {
        Button(action: action)  {
            ZStack {
                Color.appWhite
                    .cornerRadius(16)
                    .shadow(color: .appGrey, radius: 2, x: 0, y: 4)
                title
            }
            .frame(width: 60, height: 44)
        }
    }
}

struct BottomItemView_Previews: PreviewProvider {
    static var previews: some View {
        BottomItemView(title: .map_route, action: {})
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
