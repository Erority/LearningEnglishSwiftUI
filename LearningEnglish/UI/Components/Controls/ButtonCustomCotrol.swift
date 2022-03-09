//
//  ButtonCustomCotrol.swift
//  LearningEnglish
//
//  Created by Денис Большачков on 07.03.2022.
//

import SwiftUI

struct ButtonCustomCotrol: View {
    
    var action: () -> Void
    var title: String
    
    var body: some View {
        Button(action: {action()}) {
            
            ZStack{
                Rectangle()
                    .fill(Color.ColorPrimary)
                    .cornerRadius(8)
                
                Text(title)
                    .font(.custom("Inter", size: 17))
                    .foregroundColor(Color.BackgroundColor)
            }
        }
    }
}

