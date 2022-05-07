//
//  SettingClass.swift
//  Sutda
//
//  Created by 유창현 on 2022/05/07.
//

import Foundation
import Combine

class SettingData : ObservableObject {
    @Published var winRate: Bool
    @Published var howMany: Int
    
    init() {
        self.winRate = true
        self.howMany = 1
    }
}
