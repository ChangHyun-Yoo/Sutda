//
//  CardSelection.swift
//  Sutda
//
//  Created by 유창현 on 2022/02/26.
//

import SwiftUI
import GoogleMobileAds

class HapticManager {
    static let instance = HapticManager()
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
         let generator = UINotificationFeedbackGenerator()
         generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }

}

struct CardSelection: View {
    private var fullScreenAd: Interstitial?
    
    init() {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        fullScreenAd = Interstitial()
//        print(GADMobileAds.sharedInstance().versionNumber)
    }
    
    @EnvironmentObject var selectedArray: ListData
    @EnvironmentObject var settingData: SettingData
    
    @State var clicked: Int = 1
    @State var selected1 = false
    @State var selected2 = false
    @State var selected3 = false
    @State var selected4 = false
    @State var selected5 = false
    @State var selected6 = false
    @State var selected7 = false
    @State var selected8 = false
    @State var selected9 = false
    @State var selected10 = false
    @State var selected11 = false
    @State var selected12 = false
    @State var selected13 = false
    @State var selected14 = false
    @State var selected15 = false
    @State var selected16 = false
    @State var selected17 = false
    @State var selected18 = false
    @State var selected19 = false
    @State var selected20 = false
    @State var selectedNum = 0
    @State private var showingAlert = false
    @State private var showingAlert2 = false
    @State private var showDashboard = false
    
    var body: some View {
        
        GeometryReader { geo in
            NavigationView {
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Button(action: {
                            if selected1 {
                                selected1 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 1)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected1 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 1)
                                }
                            }
                        }) {
                            Image("1month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected1 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected2 {
                                selected2 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 2)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected2 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 2)
                                }
                            }
                        }) {
                            Image("2month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected2 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected3 {
                                selected3 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 3)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected3 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 3)
                                }
                            }
                        }) {
                            Image("3month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected3 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected4 {
                                selected4 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 4)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected4 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 4)
                                }
                            }
                        }) {
                            Image("4month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected4 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected5 {
                                selected5 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 5)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected5 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 5)
                                }
                            }
                        }) {
                            Image("5month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected5 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                    HStack(spacing: 0) {
                        Button(action: {
                            if selected6 {
                                selected6 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 6)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected6 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 6)
                                }
                            }
                        }) {
                            Image("6month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected6 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected7 {
                                selected7 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 7)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected7 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 7)
                                }
                            }
                        }) {
                            Image("7month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected7 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected8 {
                                selected8 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 8)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected8 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 8)
                                }
                            }
                        }) {
                            Image("8month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected8 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected9 {
                                selected9 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 9)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected9 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 9)
                                }
                            }
                        }) {
                            Image("9month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected9 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected10 {
                                selected10 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 10)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected10 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 10)
                                }
                            }
                        }) {
                            Image("10month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected10 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                    HStack(spacing: 0) {
                        Button(action: {
                            if selected11 {
                                selected11 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 11)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected11 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 11)
                                }
                            }
                        }) {
                            Image("1-1month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected11 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected12 {
                                selected12 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 12)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected12 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 12)
                                }
                            }
                        }) {
                            Image("2-1month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected12 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected13 {
                                selected13 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 13)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected13 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 13)
                                }
                            }
                        }) {
                            Image("3-1month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected13 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected14 {
                                selected14 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 14)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected14 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 14)
                                }
                            }
                        }) {
                            Image("4-1month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected14 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected15 {
                                selected15 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 15)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected15 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 15)
                                }
                            }
                        }) {
                            Image("5-1month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected15 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                    HStack(spacing: 0) {
                        Button(action: {
                            if selected16 {
                                selected16 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 16)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected16 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 16)
                                }
                            }
                        }) {
                            Image("6-1month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected16 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected17 {
                                selected17 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 17)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected17 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 17)
                                }
                            }
                        }) {
                            Image("7-1month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected17 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected18 {
                                selected18 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 18)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected18 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 18)
                                }
                            }
                        }) {
                            Image("8-1month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected18 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected19 {
                                selected19 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 19)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected19 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 19)
                                }
                            }
                        }) {
                            Image("9-1month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected19 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                        Button(action: {
                            if selected20 {
                                selected20 = false
                                selectedNum -= 1
                                //배열에서 삭제
                                selectedArray.delete(number: 20)
                            }
                            else {
                                if selectedNum == 2 {
                                    //alert
                                    showingAlert = true
                                    HapticManager.instance.notification(type: .error)
                                }
                                else {
                                    selected20 = true
                                    selectedNum += 1
                                    //배열에 추가
                                    selectedArray.append(number: 20)
                                }
                            }
                        }) {
                            Image("10-1month")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaleEffect(selected20 ? 0.7 : 1.0)
                        }.alert(isPresented: $showingAlert) {
                            Alert(title: Text("알림"), message: Text("이미 두개가 선택되었습니다"), dismissButton: .default(Text("승인")))
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                    
                    NavigationLink(destination: Result(), isActive: $showDashboard) {
                        Text("")
                    }
                    Button(action: {
                        if selectedNum != 2 {
                            if(clicked != 11) {
                                clicked += 1
                            }
                            showingAlert2 = true
                            HapticManager.instance.notification(type: .error)
                        }
                        else {
                            showDashboard = true
                            selectedNum = 0
                            selected1 = false
                            selected2 = false
                            selected3 = false
                            selected4 = false
                            selected5 = false
                            selected6 = false
                            selected7 = false
                            selected8 = false
                            selected9 = false
                            selected10 = false
                            selected11 = false
                            selected12 = false
                            selected13 = false
                            selected14 = false
                            selected15 = false
                            selected16 = false
                            selected17 = false
                            selected18 = false
                            selected19 = false
                            selected20 = false
                            if ((selectedArray.find(number1: 3, number2: 8)) || (selectedArray.find(number1: 1, number2: 8)) || (selectedArray.find(number1: 1, number2: 3)) || (selectedArray.find(number1: 10, number2: 20)) || (selectedArray.find(number1: 9, number2: 19)) || (selectedArray.find(number1: 8, number2: 18)) || (selectedArray.find(number1: 7, number2: 17)) || (selectedArray.find(number1: 6, number2: 16)) || (selectedArray.find(number1: 5, number2: 15)) || (selectedArray.find(number1: 4, number2: 14)) || (selectedArray.find(number1: 3, number2: 13)) || (selectedArray.find(number1: 2, number2: 12)) || (selectedArray.find(number1: 1, number2: 11))) && settingData.isHapticOn {
                                HapticManager.instance.notification(type: .error)
                            }
                            clicked += 1
                        }
                        clicked = clicked % 12
                        if clicked == 8 {
                            self.fullScreenAd?.loadInterstitial()
                        } else if clicked == 0 {
                            self.fullScreenAd?.presentInterstitial()
                        }
                    }) {
                        Text("결과 보기")
                            .fontWeight(.bold)
                            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                            .overlay(
                                Capsule(style: .continuous).stroke(Color.red, lineWidth: 3))
                    }.alert(isPresented: $showingAlert2) {
                        Alert(title: Text("알림"), message: Text("두 개의 카드를 선택하세요"), dismissButton: .default(Text("승인")))
                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    
                    Spacer()
                    
                    BannerAd(unitID: "ca-app-pub-7961540941236327/5096627432")
                                            .frame(width: 320, height: 40)
                                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    
                }.navigationBarTitle(Text("카드 선택"))
            }.environmentObject(selectedArray).accentColor(.red)
        }
    }
}

struct CardSelection_Previews: PreviewProvider {
    static var previews: some View {
        CardSelection().environmentObject(ListData())
    }
}
