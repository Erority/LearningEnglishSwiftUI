//
//  VariantModel.swift
//  LearningEnglish
//
//  Created by Денис Большачков on 07.03.2022.
//

import Foundation
import SwiftUI

struct VariantModel: Identifiable {
    var id = UUID()
    var title: String
    var img: Image
    var color: Color
}
