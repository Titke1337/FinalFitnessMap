//
//  TabScreenClub.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct TabScreenClub: View {
    var body: some View {
        //scrollview не фурычит почему-то
        ScrollView {
            VStack {
                TopSideHeader(picture: .reel_picture, imagePoints: .locCard_points, imageMetro: .locCard_metro, company: "ТЕРРИТОРИЯ ФИТНЕСА", street: "Братиславская", adress: "Марьино, Перервинский б-р, д. 4, корп. 1", metro: "Братиславкая, Люблино, Марьино")
                TopSideScheduleView(title: "График работы", data: ScheduleData.allScheduleData)
                MapView(image: .map_map)
                ContactsView(title: "Контакты", data: ContactsData.allContactsData)
                SocialsView()
            }
        }
    }
}

struct TabScreenClub_Previews: PreviewProvider {
    static var previews: some View {
        TabScreenClub()
            .previewLayout(.fixed(width: 375, height: 1000))
    }
}
