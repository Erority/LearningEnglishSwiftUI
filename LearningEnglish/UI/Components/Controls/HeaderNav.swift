//
//  HeaderNav.swift
//  LearningEnglish
//
//  Created by Денис Большачков on 07.03.2022.
//

import SwiftUI

struct HeaderNav: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var canGoBack: Bool
    
    var body: some View {
        HStack{
            
            if canGoBack{
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image("BackArrow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 36, height: 36)
                        .padding(.leading, 25)
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .padding(.bottom, 25)
                }
            }
            
            Spacer()
            
            Image("Settings")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 36, height: 36)
                .padding(.trailing, 25)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding(.bottom, 25)
        }
        .frame(height: 116)
        .frame(maxWidth: .infinity)
        .background(Color.ColorPrimary)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}
