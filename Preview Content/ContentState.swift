//
//  ContentState.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import Foundation

class ContentState: ObservableObject {
    
    let scheduleCards: [ScheduleData] = ScheduleData.allScheduleData
}
