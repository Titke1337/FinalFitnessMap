//
//  СщтефсеыМшуц.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct ContactsView: View {
    
    let title: String
    let data: [ContactsData]
    
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Text(title)
                .padding(.horizontal, 14)
                .frame(height: 50)
                .font(.system(size: 17, weight: .medium))
            ForEach(ContactsData.allContactsData) { contacs in
                ContactsItemView(data: contacs)
            }
        }
    }
}

struct ContactsViewPreviews: PreviewProvider {
    static var previews: some View {
        ContactsView(title: "Контакты", data: ContactsData.allContactsData)
            .previewLayout(.fixed(width: 375, height: 400))
    }
}
