//
//  SutdaInform.swift
//  Sutda
//
//  Created by 유창현 on 2022/02/26.
//

import SwiftUI

struct SutdaInform: View {
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: WhatIsSutda()) {
                    HStack {
                        Image(systemName: "book.closed")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.red)
                        Spacer()
                        Text("섯다란?")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                        Spacer()
                    }
                    .frame(height: 100)
                }
                NavigationLink(destination: SutdaExp()) {
                    HStack {
                        Image(systemName: "menucard")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.red)
                        Spacer()
                        Text("섯다 족보 설명")
                            .foregroundColor(.red)
                            .font(.largeTitle)
                        Spacer()
                    }
                    .frame(height: 100)
                }
            }.navigationBarTitle(Text("섯다 규칙"))
        }.accentColor(.red)
    }
}

struct SutdaInform_Preivew: PreviewProvider {
    static var previews: some View {
        SutdaInform()
    }
}
