//
//  Setting.swift
//  Sutda
//
//  Created by 유창현 on 2022/05/08.
//

import Foundation
import Combine

class SettingData: ObservableObject {
    @Published var isEffectOn: Bool
    @Published var isHapticOn: Bool
    
    init() {
        self.isEffectOn = true
        self.isHapticOn = true
    }
}
