//
//  StudyActivityViewModel.swift
//  LearningEnglish
//
//  Created by Денис Большачков on 08.03.2022.
//

import Foundation

class StudyActivityViewModel: ObservableObject {
    
    static var CARD_ACTIVITY: Int = 0
    static var CHOOSE_ACTIVITY: Int = 1
    
    @Published var currentView: Int = 1
    
    @Published var itemsToTranslate = [String]()
}
