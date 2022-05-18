//
//  TabViewNavigation.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct TabViewNavigation: View {
    
    @State
    var selectedPageIndex = 0
    
    var body: some View {
        VStack(spacing: .zero) {
            ZStack {
                switch selectedPageIndex {
                    
                case 0:
                    TabScreenMain()
                case 1:
                    TabScreenCalend()
                case 2:
                    TabScreenSchedule()
                default:
                    TabScreenClub()
    
                }
            }
            Spacer()
            
            TabBar(selectedTabIndex: $selectedPageIndex)
            
        }
    }
}

struct TabViewNavigation_Previews: PreviewProvider {
    static var previews: some View {
        TabViewNavigation()
    }
}
