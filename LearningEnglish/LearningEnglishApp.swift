//
//  LearningEnglishApp.swift
//  LearningEnglish
//
//  Created by Денис Большачков on 25.02.2022.
//

import SwiftUI

@main
struct LearningEnglishApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            StartScreen()
        }
    }
}
