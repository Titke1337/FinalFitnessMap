//
//  ContactsView.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct ContactsItemView: View {
    
    let data: ContactsData
    
    var body: some View {
        VStack(spacing: .zero) {
            HStack {
                Text(data.title)
                    .foregroundColor(.appGrey)
                    .font(.system(size: 17))
                Spacer()
                Text(data.contact)
                    .font(.system(size: 17, weight: .medium))
            }
            .frame(height: 50)
            Divider()
        }
        .padding(.horizontal, 14)
    }
}

struct ContactsItemView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: .zero) {
            ForEach(ContactsData.allContactsData) { contact in
                ContactsItemView(data: contact)
            }
            Spacer()
        }
        .previewLayout(.fixed(width: 375, height: 500))
    }
}
