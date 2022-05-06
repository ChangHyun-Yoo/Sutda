//
//  WhatIsSutda.swift
//  Sutda
//
//  Created by 유창현 on 2022/02/26.
//

import SwiftUI

struct WhatIsSutda: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("섯다는 화투패 2장으로 높은 족보를 만들어서 상대를 제압하는 베팅게임입니다.")
                .padding()
            Text("1월~10월의 패 중 피를 제외한 20장으로 게임을 합니다.")
                .padding()
            VStack {
                HStack(spacing: 0) {
                    Image("1month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("2month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("3month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("4month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("5month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("6month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("7month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("8month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("9month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("10month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                HStack(spacing: 0) {
                    Image("1-1month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("2-1month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("3-1month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("4-1month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("5-1month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("6-1month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("7-1month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("8-1month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("9-1month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("10-1month")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }.padding()
        }
    }
}

struct WhatIsSutda_Previews: PreviewProvider {
    static var previews: some View {
        WhatIsSutda()
    }
}
