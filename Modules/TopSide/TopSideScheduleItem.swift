//
//  TopSideSchedule.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 18.05.2022.
//

import SwiftUI

struct TopSideScheduleItem: View {
    
    let data: ScheduleData
    
    var body: some View {
        HStack {
            Text(data.title)
                .foregroundColor(.appGrey)
                .font(.system(size: 17))
            Spacer()
            Text(data.time)
        }
        .padding(.vertical, 14)
    }
}

struct TopSideScheduleItem_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: .zero) {
            ForEach(ScheduleData.allScheduleData) { schedules in
                TopSideScheduleItem(data: schedules)
            }
        }
        .previewLayout(.fixed(width: 375, height: 150))
    }
}
