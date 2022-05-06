//
//  Setting.swift
//  Sutda
//
//  Created by 유창현 on 2022/05/07.
//

import SwiftUI

struct Setting: View {
    @State var winRate = true
    var picker = [3, 4, 5]
    @State private var howMany = 1
    
    var body: some View {
        Form {
            VStack {
                Toggle("승률 보기", isOn: $winRate)
                    .foregroundColor(.red)
                    .toggleStyle(SwitchToggleStyle(tint: Color.red))
                    .font(.title2)
                    .padding()
                if winRate {
                    VStack {
                        Text("게임 인원 수 선택")
                            .font(.title2)
                            .foregroundColor(.gray)
                        Picker("게임 인원 수", selection: $howMany) {
                            ForEach(0 ..< 3) {
                                Text("\(self.picker[$0])")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            }
                        }.pickerStyle(.wheel)
                    }
                }
            }
        }
    }
}

struct Setting_Preivew: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
