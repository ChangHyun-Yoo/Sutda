//
//  SettingView.swift
//  Sutda
//
//  Created by 유창현 on 2022/05/08.
//

import SwiftUI

struct SettingView: View {
    @EnvironmentObject private var settingData: SettingData
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("상호 작용")) {
                    VStack {
                        Toggle(isOn: $settingData.isEffectOn) {
                            Text("높은 족보 효과")
                        }.toggleStyle(SwitchToggleStyle(tint: .red))
                        
                        Toggle(isOn: $settingData.isHapticOn) {
                            Text("햅틱 진동")
                        }.toggleStyle(SwitchToggleStyle(tint: .red))
                    }
                }
                .navigationTitle("설정")
            }.accentColor(.red)
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
