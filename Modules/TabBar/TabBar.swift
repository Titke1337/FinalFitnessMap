//
//  TabView.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct TabBar: View {
    
    @Binding
    var selectedTabIndex: Int
    
    var body: some View {
        VStack(spacing: .zero) {
            Divider()
            GeometryReader { geometry in
                HStack(spacing: .zero) {
                    let itemWidth = geometry.size.width / 4
                    
                    Button(action: { selectedTabIndex = 0 }) {
                        TabItemView(title: "Главная",
                                    image: .tab_main,
                                    selected: selectedTabIndex == 0)
                    }
                    .frame(width: itemWidth)
                    
                    Button(action: { selectedTabIndex = 1 }) {
                        TabItemView(title: "Мой календарь",
                                    image: .tab_calend,
                                    selected: selectedTabIndex == 1)
                    }
                    .frame(width: itemWidth)
                    
                    Button(action: { selectedTabIndex = 2 }) {
                        TabItemView(title: "Расписание",
                                    image: .tab_schedule,
                                    selected: selectedTabIndex == 2)
                    }
                    .frame(width: itemWidth)
                    
                    Button(action: { selectedTabIndex = 3 }) {
                        TabItemView(title: "Клуб",
                                    image: .tab_club,
                                    selected: selectedTabIndex == 3)
                    }
                    .frame(width: itemWidth)
                }
            }
            .frame(height: 44)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    
    @State
    static var selectedTabIndex = 0
    
    static var previews: some View {
        VStack {
            Spacer()
            
            TabBar(selectedTabIndex: $selectedTabIndex)
        }
        .previewLayout(.fixed(width: 375, height: 300))
    }
}
