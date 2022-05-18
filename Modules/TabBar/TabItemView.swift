//
//  TabItemView.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct TabItemView: View {
    
    let title: String
    let image: Image
    var selected: Bool = true
    
    var body: some View {
        VStack(spacing: .zero) {
            image
                .renderingMode(.template)
                .foregroundColor(selected ? .appBlack : .appGrey)
                .frame(width: 28, height: 28)
        
            Text(title)
                .foregroundColor(selected ? .appBlack : .appGrey)
                .font(.system(size: 10, weight: .medium))
        }
        .frame(width: 93, height: 47)
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(title: "Главная", image: .tab_main, selected: true)
            .previewLayout(.fixed(width: 100, height: 44))
        
        TabItemView(title: "Мой календарь", image: .tab_calend, selected: false)
            .previewLayout(.fixed(width: 100, height: 44))
        
        TabItemView(title: "Расписание", image: .tab_schedule, selected: false)
            .previewLayout(.fixed(width: 100, height: 44))
    }
}
