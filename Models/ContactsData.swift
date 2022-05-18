
import Foundation

struct ContactsData: Identifiable {

    let id: Int
    let title: String
    let contact: String
    
    
    static var allContactsData: [ContactsData] {
        return [
            ContactsData(id: 0, title: "Отдел продаж", contact: "+7 (499) 116-64-59"),
            ContactsData(id: 1, title: "Рецепция", contact: "+7 (499) 283-48-86"),
            ContactsData(id: 2, title: "По всем вопросам", contact: "terfit@gmail.com")
        ]
    }
}
