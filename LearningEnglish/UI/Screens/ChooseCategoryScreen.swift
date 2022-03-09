//
//  ChooseCategoryScreen.swift
//  LearningEnglish
//
//  Created by Денис Большачков on 07.03.2022.
//

import SwiftUI

struct ChooseCategoryScreen: View {
    
    let columns = [GridItem(.flexible()),GridItem(.flexible())]
    
    let data = [
        VariantModel(title: "Погода", img: Image("Settings"), color: Color.ColorPrimary),
        VariantModel(title: "Домашние животные", img: Image("Settings"), color: Color.ColorPrimary),
        VariantModel(title: "Погода", img: Image("Settings"), color: Color.SecondColor),
        VariantModel(title: "Домашние животные", img: Image("Settings"), color: Color.SecondColor),
        VariantModel(title: "Погода", img: Image("Settings"), color: Color.ThirdColor),
        VariantModel(title: "Домашние животные", img: Image("Settings"), color: Color.ThirdColor)]
    
    @State private var selection: String? = nil
    
    var body: some View {
        VStack {
            
            NavigationLink(destination: ChooseActivityScreen().navigationBarHidden(true), tag: "ChooseActivityScreen", selection: $selection){ EmptyView() }
            
            HeaderNav(canGoBack: true)
            
            Text("Выберите категорию")
                .font(.custom("Inter", size: 24))
                .foregroundColor(Color.ColorPrimary)
                .padding(.top, 50)
            
            LazyVGrid(columns: columns, spacing: 40) {
                ForEach(data){ item in
                    VariantCard(title: item.title, image: item.img, color: item.color, action: {
                        selection = "ChooseActivityScreen"
                    }, variant: 1)
                        .frame(width: 150, height: 146)
                        .background(item.color)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                }
            }
            .padding(.top, 35)
            Spacer()
        }.ignoresSafeArea()
    }
}

struct ChooseCategoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCategoryScreen()
    }
}
