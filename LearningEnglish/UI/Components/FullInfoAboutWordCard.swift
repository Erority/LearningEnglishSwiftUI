//
//  FullInfoAboutWordCard.swift
//  LearningEnglish
//
//  Created by Денис Большачков on 08.03.2022.
//

import SwiftUI

struct FullInfoAboutWordCard: View {
    
    var wordInEnglish: String
    var transcription: String
    var translate: String
    
    var body: some View {
        VStack (spacing: 39){
            
            Text(wordInEnglish)
                .font(.custom("Iter", size: 36))
                .foregroundColor(.white)
                .padding(.top, 56)
            
            Text(transcription)
                .font(.custom("Iter", size: 36))
                .foregroundColor(.white)
            
            Text(translate)
                .font(.custom("Iter", size: 36))
                .foregroundColor(.white)
            
            Spacer()
            
        }
        .frame(height: 322)
        .background(Color.ColorPrimary)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

