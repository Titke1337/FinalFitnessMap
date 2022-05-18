
import Foundation

struct ScheduleData: Identifiable {
    
    let id: Int
    let title: String
    let time: String
    
    static var allScheduleData: [ScheduleData] {
        return [
            ScheduleData(id: 1, title: "Понедельник - Пятница", time: "06:00 - 00:00"),
            ScheduleData(id: 2, title: "Суббота - Воскресенье", time: "09:00 - 23:00")
        ]
    }
}
