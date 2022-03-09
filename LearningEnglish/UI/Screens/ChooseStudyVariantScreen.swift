//
//  ChooseStudyVariantScreen.swift
//  LearningEnglish
//
//  Created by Денис Большачков on 07.03.2022.
//

import SwiftUI

struct ChooseStudyVariantScreen: View {
    
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())]
    
    var data: [VariantModel] = [
        VariantModel(title: "Учим новые слова", img: Image("Settings"), color: Color.ColorPrimary),
        VariantModel(title: "Аудирование", img: Image("Settings"), color: Color.SecondColor),
        VariantModel(title: "Учим новые слова", img: Image("Settings"), color: Color.ThirdColor)]
    
    @State private var selection: String? = nil
    
    var body: some View {
        VStack {
            NavigationLink(destination: ChooseCategoryScreen().navigationBarHidden(true), tag: "ChooseCategoryScreen", selection: $selection){ EmptyView() }
            
            HeaderNav(canGoBack: false)
            
            Text("Выберите вид обучения")
                .font(.custom("Inter", size: 24))
                .foregroundColor(Color.ColorPrimary)
                .padding(.top, 50)
            
            LazyHGrid(rows: rows) {
                
                ForEach(data){item in
                    VariantCard(title: item.title, image: item.img, color: item.color, action: {
                        selection = "ChooseCategoryScreen"
                    }, variant: 0)
                        .frame(width: 200, height: 146)
                        .background(item.color)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
            .padding(.top, 37)
            .frame(maxHeight: 544)
            
            Spacer()
        }.ignoresSafeArea()
    }
}

struct ChooseStudyVariantScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChooseStudyVariantScreen()
    }
}
