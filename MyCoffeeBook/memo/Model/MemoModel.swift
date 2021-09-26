//
//  MemoModel.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.
//

import Foundation
struct MemoModel: Identifiable {
    var id: Int
    var name: String
    var saler: String
    var astringency: Int
    var taste: Int
    var roast: Int
    var date: Date
}


let MOCK_MEMO: [MemoModel] = [
    MemoModel(id: 0, name: "コロンビア", saler: "KL", astringency: 0, taste: 1, roast: 2, date: Date()),
    MemoModel(id: 1, name: "コロンビア", saler: "KL", astringency: 1, taste: 1, roast: 2, date: Date()),
    MemoModel(id: 2, name: "コロンビア", saler: "KL", astringency: 2, taste: 1, roast: 2, date: Date()),
    MemoModel(id: 3, name: "コロンビア", saler: "KL", astringency: 3, taste: 1, roast: 2, date: Date()),
    MemoModel(id: 4, name: "コロンビア", saler: "KL", astringency: 4, taste: 1, roast: 2, date: Date()),
    MemoModel(id: 5, name: "コロンビア", saler: "KL", astringency: 0, taste: 1, roast: 2, date: Date()),
    MemoModel(id: 6, name: "コロンビア", saler: "KL", astringency: 0, taste: 1, roast: 2, date: Date())
]
