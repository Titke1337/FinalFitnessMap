//
//  SocialsView\.swift
//  FitnessMap
//
//  Created by Вячеслав Зайченко on 17.05.2022.
//

import SwiftUI

struct SocialsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: .zero) {
            Text("Мы в социальных сетях")
                .font(.system(size: 17, weight: .medium))
                .padding(.vertical, 24)
            HStack {
                PrimaryButton(image: .socials_vk,
                              action: {})
                PrimaryButton(image: .socials_tg,
                              action: {})
                PrimaryButton(image: .socials_yt,
                              action: {})
                
                //чет картинки опять плавают, хотя сделал по аналогии с таббаром
            }
        }
    }
}

struct SocialsView_Previews: PreviewProvider {
    static var previews: some View {
        SocialsView()
            .previewLayout(.fixed(width: 375, height: 400))
    }
}
