//
//  MemoModel.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.
//

import Foundation
import RealmSwift

protocol MemoProtocol {
    var id: Int { set get }
    var name: String { set get }
    var saler: String { set get }
    var astringency: Int { set get }
    var taste: Int { set get }
    var roast: Int { set get }
    var date: Date { set get }
}

struct MemoModel111: MemoProtocol{
    var id: Int
    var name: String
    var saler: String
    var astringency: Int
    var taste: Int
    var roast: Int
    var date: Date
}

class MemoModel: Object, MemoProtocol {
    @objc dynamic var id: Int = 0
    @objc dynamic var name: String = ""
    @objc dynamic var saler: String = ""
    @objc dynamic var astringency: Int = 0
    @objc dynamic var taste: Int = 0
    @objc dynamic var roast: Int = 0
    @objc dynamic var date: Date = Date()
}


//let MOCK_MEMO: [MemoModel] = [
//    MemoModel(),
//    MemoModel(id: 1, name: "コロンビア", saler: "KL", astringency: 1, taste: 1, roast: 2, date: Date()),
//    MemoModel(id: 2, name: "コロンビア", saler: "KL", astringency: 2, taste: 1, roast: 2, date: Date()),
//    MemoModel(id: 3, name: "コロンビア", saler: "KL", astringency: 3, taste: 1, roast: 2, date: Date()),
//    MemoModel(id: 4, name: "コロンビア", saler: "KL", astringency: 4, taste: 1, roast: 2, date: Date()),
//    MemoModel(id: 5, name: "コロンビア", saler: "KL", astringency: 0, taste: 1, roast: 2, date: Date()),
//    MemoModel(id: 6, name: "コロンビア", saler: "KL", astringency: 0, taste: 1, roast: 2, date: Date())
//]
