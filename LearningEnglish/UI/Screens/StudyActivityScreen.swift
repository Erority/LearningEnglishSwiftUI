//
//  StudyActivityScreen.swift
//  LearningEnglish
//
//  Created by Денис Большачков on 08.03.2022.
//

import SwiftUI

struct StudyActivityScreen: View {
    
    @StateObject var studyActivityViewModel = StudyActivityViewModel()
    
    let rows = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        VStack {
            
            HeaderNav(canGoBack: true)
            
            switch studyActivityViewModel.currentView{
            case 0:
                VStack{
                    
                    Text("Домашние животные")
                        .font(.custom("Iter", size: 18))
                        .foregroundColor(Color.ColorPrimary)
                        .padding(.top, 50)
                    
                    Text("1/10")
                        .font(.custom("Iter", size: 18))
                        .foregroundColor(Color.AccentTextColor)
                        .padding(.top, 12)
                    
                    FullInfoAboutWordCard(wordInEnglish: "Cat", transcription: "[kaet]", translate: "Кот")
                        .frame(maxWidth: .infinity)
                        .background(Color.ColorPrimary)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.horizontal, 53)
                        .padding(.top, 79)
                    
                    
                    Spacer()
                    
                    ButtonCustomCotrol(action: {
                        
                    }, title: "Далее")
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .padding(.horizontal, 16)
                        .padding(.top, 54)
                        .padding(.bottom, 91)
                    
                }
            case 1:
                VStack{
                    
                    Text("Выберите вариант перевода")
                        .font(.custom("Iter", size: 18))
                        .foregroundColor(Color.ColorPrimary)
                        .padding(.top, 50)
                    
                    Text("Cat")
                        .font(.custom("Iter", size: 36))
                        .foregroundColor(Color.ColorPrimary)
                        .padding(.top, 50)
                    
                    
                    LazyHGrid(rows: rows, spacing: 26) {
                        ForEach(studyActivityViewModel.itemsToTranslate, id: \.self){ item in
                            
                            Button(action: {}){
                                Text(item)
                                    .font(.custom("Iter", size: 36))
                                    .foregroundColor(.white)
                            }
                            .frame(width: 200, height: 50)
                            .background(Color.ThirdColor)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                    }.frame(maxHeight: .infinity)
                        .padding(.bottom,130)
                    
                    Spacer()
                    
                    ButtonCustomCotrol(action: {
                        
                    }, title: "Далее")
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .padding(.horizontal, 16)
                        .padding(.bottom, 91)
                }
            default:
                EmptyView()
            }
        }
        .ignoresSafeArea()
        .onAppear {
            studyActivityViewModel.itemsToTranslate = ["Кошка", "Собака", "Змея", "Лось"]
        }
    }
        
}

struct StudyActivityScreen_Previews: PreviewProvider {
    static var previews: some View {
        StudyActivityScreen()
    }
}
