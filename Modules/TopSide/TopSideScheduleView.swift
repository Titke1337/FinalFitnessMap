//
//  TopSideScheduleView.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 18.05.2022.
//

import SwiftUI

struct TopSideScheduleView: View {
    
    let title: String
    let data: [ScheduleData]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .frame(height: 50)
                .font(.system(size: 17, weight: .medium))
            ForEach(ScheduleData.allScheduleData) { schedule in
                TopSideScheduleItem(data: schedule)
                //if scheduleData.id != state.scheduleCards.last?.id {
                // Divider()
                // не вышло чет
            }
        }
        .padding(.horizontal, 14)
        .frame(width: 375)
    }
}

struct TopSideScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        TopSideScheduleView(title: "График работы", data: ScheduleData.allScheduleData)
            .previewLayout(.fixed(width: 375, height: 200))
    }
}
