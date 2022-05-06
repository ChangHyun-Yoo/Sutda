//
//  Result.swift
//  Sutda
//
//  Created by 유창현 on 2022/02/25.
//

import SwiftUI

struct Result: View {
    init() {
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
    }
    
    @EnvironmentObject var selectedArray: ListData
    
    var body: some View {
        let textNum: Int = checkNum(selectedArray: selectedArray)
        let results: [String] = changeElement()

        GeometryReader { geo in
            VStack(spacing: 0) {
                ForEach(0 ..< 17) { index in
                    if index == textNum {
                        Text(results[index])
                            .font(.system(size: 100))
                            .foregroundColor(.red)
                            .frame(width: geo.size.width, height: geo.size.height * 3 / 35)
                            .minimumScaleFactor(0.001)
                    }
                    else {
                        Text(results[index])
                            .font(.system(size: 100))
                            .frame(width: geo.size.width, height: geo.size.height * 2 / 35)
                            .minimumScaleFactor(0.001)
                    }
                }
            }
        }
        
    }
    
    func checkNum(selectedArray: ListData) -> Int {
        if (selectedArray.find(number1: 3, number2: 8)) {
            return 0
        }
        else if (selectedArray.find(number1: 1, number2: 8)) {
            return 1
        }
        else if (selectedArray.find(number1: 1, number2: 3)) {
            return 2
        }
        else if (selectedArray.find(number1: 10, number2: 20)) {
            return 3
        }
        else if (selectedArray.find(number1: 9, number2: 19)) {
            return 3
        }
        else if (selectedArray.find(number1: 8, number2: 18)) {
            return 3
        }
        else if (selectedArray.find(number1: 7, number2: 17)) {
            return 3
        }
        else if (selectedArray.find(number1: 6, number2: 16)) {
            return 3
        }
        else if (selectedArray.find(number1: 5, number2: 15)) {
            return 3
        }
        else if (selectedArray.find(number1: 4, number2: 14)) {
            return 3
        }
        else if (selectedArray.find(number1: 3, number2: 13)) {
            return 3
        }
        else if (selectedArray.find(number1: 2, number2: 12)) {
            return 3
        }
        else if (selectedArray.find(number1: 1, number2: 11)) {
            return 3
        }
        else if (selectedArray.find(number1: 1, number2: 2) || selectedArray.find(number1: 1, number2: 12) || selectedArray.find(number1: 2, number2: 11) || selectedArray.find(number1: 11, number2: 12)) {
            return 4
        }
        else if (selectedArray.find(number1: 1, number2: 4) || selectedArray.find(number1: 1, number2: 14) || selectedArray.find(number1: 11, number2: 4) || selectedArray.find(number1: 11, number2: 14)) {
            return 5
        }
        else if (selectedArray.find(number1: 1, number2: 9) || selectedArray.find(number1: 1, number2: 19) || selectedArray.find(number1: 11, number2: 9) || selectedArray.find(number1: 11, number2: 19)) {
            return 6
        }
        else if (selectedArray.find(number1: 1, number2: 10) || selectedArray.find(number1: 11, number2: 10) || selectedArray.find(number1: 1, number2: 20) || selectedArray.find(number1: 11, number2: 20)) {
            return 7
        }
        else if (selectedArray.find(number1: 4, number2: 10) || selectedArray.find(number1: 4, number2: 20) || selectedArray.find(number1: 14, number2: 10) || selectedArray.find(number1: 14, number2: 20)) {
            return 8
        }
        else if (selectedArray.find(number1: 4, number2: 6) || selectedArray.find(number1: 4, number2: 16) || selectedArray.find(number1: 14, number2: 6) || selectedArray.find(number1: 14, number2: 16)) {
            return 9
        }
        else if (selectedArray.find(number1: 4, number2: 7)) {
            return 16
        }
        else if (selectedArray.find(number1: 3, number2: 7)) {
            return 13
        }
        else if (selectedArray.find(number1: 4, number2: 9)) {
            return 15
        }
        else if (selectedArray.find(number1: 14, number2: 9) || selectedArray.find(number1: 4, number2: 19) || selectedArray.find(number1: 14, number2: 19)) {
            return 14
        }
        else {
            if selectedArray.sum() % 10 == 9 {
                return 10
            }
            else if selectedArray.sum() % 10 == 8 {
                return 11
            }
            else if selectedArray.sum() % 10 == 7 {
                return 11
            }
            else if selectedArray.sum() % 10 == 6 {
                return 11
            }
            else if selectedArray.sum() % 10 == 5 {
                return 11
            }
            else if selectedArray.sum() % 10 == 4 {
                return 11
            }
            else if selectedArray.sum() % 10 == 3 {
                return 11
            }
            else if selectedArray.sum() % 10 == 2 {
                return 11
            }
            else if selectedArray.sum() % 10 == 1 {
                return 11
            }
            else {
                return 12
            }
        }
    }
    
    func changeElement() -> [String] {
        var list: [String] = ["삼팔광땡", "일팔광땡", "일삼광땡", "(장~삥)땡", "알리", "독사", "구삥", "장삥", "장사", "세륙", "갑오", "(8~1)끗", "망통", "땡잡이", "구사(재경기)", "멍텅구리 구사", "암행어사"]
        
        if (selectedArray.find(number1: 10, number2: 20)) {
            list[3] = "장땡"
        }
        else if (selectedArray.find(number1: 9, number2: 19)) {
            list[3] = "구땡"
        }
        else if (selectedArray.find(number1: 8, number2: 18)) {
            list[3] = "팔땡"
        }
        else if (selectedArray.find(number1: 7, number2: 17)) {
            list[3] = "칠땡"
        }
        else if (selectedArray.find(number1: 6, number2: 16)) {
            list[3] = "육땡"
        }
        else if (selectedArray.find(number1: 5, number2: 15)) {
            list[3] = "오땡"
        }
        else if (selectedArray.find(number1: 4, number2: 14)) {
            list[3] = "사땡"
        }
        else if (selectedArray.find(number1: 3, number2: 13)) {
            list[3] = "삼땡"
        }
        else if (selectedArray.find(number1: 2, number2: 12)) {
            list[3] = "이땡"
        }
        else if (selectedArray.find(number1: 1, number2: 11)) {
            list[3] = "일땡"
        }
        else {
            if selectedArray.sum() % 10 == 8 {
                list[11] = "8끗"
            }
            else if selectedArray.sum() % 10 == 7 {
                list[11] = "7끗"
            }
            else if selectedArray.sum() % 10 == 6 {
                list[11] = "6끗"
            }
            else if selectedArray.sum() % 10 == 5 {
                list[11] = "5끗"
            }
            else if selectedArray.sum() % 10 == 4 {
                list[11] = "4끗"
            }
            else if selectedArray.sum() % 10 == 3 {
                list[11] = "3끗"
            }
            else if selectedArray.sum() % 10 == 2 {
                list[11] = "2끗"
            }
            else if selectedArray.sum() % 10 == 1 {
                list[11] = "1끗"
            }
        }
        return list
    }
}

struct Result_Previews: PreviewProvider {
    static var previews: some View {
        Result()
    }
}
