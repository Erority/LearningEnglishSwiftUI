//
//  VariantCard.swift
//  LearningEnglish
//
//  Created by Денис Большачков on 07.03.2022.
//

import SwiftUI

struct VariantCard: View {
    
    var title: String
    var image: Image
    var color: Color
    
    var action: () -> Void
    
    var variant: Int
    
    var body: some View {
        Button(action: {
            action()
        }) {
            VStack {
                Text(title)
                    .font(.custom("Inter", size: 20))
                    .foregroundColor(.white)
                    .padding(.top, 28)
                    .multilineTextAlignment(.center)
                
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding(.bottom, variant == 0 ? 25 : 15)
            }
            
        }
        .background(color)
    }
}
