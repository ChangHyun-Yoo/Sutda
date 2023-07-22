//
//  SutdaApp.swift
//  Sutda
//
//  Created by 유창현 on 2022/02/25.
//

import SwiftUI

@main
struct SutdaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ListData())
                .environmentObject(SettingData())
                .navigationViewStyle(.stack)
        }
    }
}
