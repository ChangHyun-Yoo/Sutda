//
//  ContentView.swift
//  Sutda
//
//  Created by 유창현 on 2022/02/25.
//



import SwiftUI
import AppTrackingTransparency
import FBAudienceNetwork

struct ContentView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            CardSelection()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("족보 보기")
                }.tag(1)
            SutdaInform()
                .tabItem {
                    Image(systemName: "book.closed.fill")
                    Text("섯다 규칙")
                }.tag(2)
            SettingView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("설정")
                }.tag(3)
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification)) { _ in
            ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in })
            FBAdSettings.setAdvertiserTrackingEnabled(true)
        }
        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
