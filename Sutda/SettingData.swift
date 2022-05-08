//
//  Setting.swift
//  Sutda
//
//  Created by 유창현 on 2022/05/08.
//

import Foundation
import Combine

class SettingData: ObservableObject {
    @Published var isEffectOn: Bool {
        didSet {
            UserDefaults.standard.set(isEffectOn, forKey: "isEffectOn")
        }
    }
    @Published var isHapticOn: Bool {
        didSet {
            UserDefaults.standard.set(isHapticOn, forKey: "isHapticOn")
        }
    }
    
    init() {
        self.isEffectOn = UserDefaults.standard.object(forKey: "isEffectOn") as? Bool ?? true
        self.isHapticOn = UserDefaults.standard.object(forKey: "isHapticOn") as? Bool ?? true
    }
}
