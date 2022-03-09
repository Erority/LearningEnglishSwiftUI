//
//  StartWindow.swift
//  LearningEnglish
//
//  Created by Денис Большачков on 25.02.2022.
//

import SwiftUI

struct StartScreen: View {
    
    @State private var selection: String? = nil
    
    var body: some View {
        NavigationView{
            VStack {
                
                NavigationLink(destination: ChooseStudyVariantScreen().navigationBarHidden(true), tag: "ChooseStudyVariantScreen", selection: $selection){ EmptyView() }
                
                ZStack {
                    Image("Rectangle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    VStack {
                        
                        Image("ImageBook")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        
                        Text("Изучай английский легко")
                            .foregroundColor(.white)
                            .font(.custom("Inter", size: 24))
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(height: 562)
                .edgesIgnoringSafeArea([.top, .horizontal])
                
                ButtonCustomCotrol(action: {
                    
                    selection = "ChooseStudyVariantScreen"
                    
                }, title: "Начать обучение")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 90)
                    .padding(.horizontal, 16)
                
                Spacer()
            }
        }
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}
