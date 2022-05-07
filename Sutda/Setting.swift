//
//  Setting.swift
//  Sutda
//
//  Created by 유창현 on 2022/05/07.
//

import SwiftUI

struct Setting: View {
    @EnvironmentObject var settingData: SettingData
    let picker = [3, 4, 5]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("승리 확률"),
                        footer: Text("제공되는 승리 확률은 게밍 인원 수를 고려하지만, 카드를 뽑은 순서는 고려하지 않으며, 단순 통계적인 수치만 계산하고 결과에 대해 책임지지 않습니다")) {
                    Toggle("승리 확률 보기", isOn: self.$settingData.winRate)
                        .foregroundColor(.red)
                        .toggleStyle(SwitchToggleStyle(tint: Color.red))
                        .font(.title2)
                        .padding()
                    if settingData.winRate {
                        VStack {
                            Text("게임 인원 수 선택")
                                .font(.title2)
                                .foregroundColor(.gray)
                            Picker("게임 인원 수", selection: self.$settingData.howMany) {
                                ForEach(0 ..< 3) {
                                    Text("\(self.picker[$0])")
                                        .font(.title2)
                                }
                            }.pickerStyle(.wheel)
                        }
                    }
                }
            }.navigationTitle("설정")
        }.accentColor(.red)
    }
}

struct Setting_Preivew: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
