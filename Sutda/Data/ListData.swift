//
//  ListData.swift
//  Sutda
//
//  Created by 유창현 on 2022/02/25.
//

import Foundation
import Combine

class ListData: ObservableObject {
    @Published var list: [Int]
    @Published var num: Int = 0
    
    init() {
        list = [-1, -1]
        num = 0
    }
    
    func initiate() {
        list = [-1, -1]
        num = 0
    }
    
    func append(number: Int) {
        num = num % 2
        list[num] = number
        num += 1
    }
    
    func delete(number: Int) {
        list[list.firstIndex(of: number)!] = -1
        if list[0] == -1 {
            let temp: Int = list[1]
            list[1] = list[0]
            list[0] = temp
        }
        num -= 1
    }
    
    func find(number1: Int, number2: Int) -> Bool {
        if (list == [number1 , number2] || list == [number2 , number1]) {
            return true
        }
        else {
            return false
        }
    }
    
    func sum() -> Int {
        return list[0] + list[1]
    }
    
    func first() -> Int {
        return list[0]
    }
    
    func second() -> Int {
        return list[1]
    }
}
