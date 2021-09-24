//
//  MemoListModel.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.
//

import Foundation
class MemoListModel {
    private var memoList: [MemoModel] = MOCK_MEMO
    func get() -> [MemoModel] {
        return memoList
    }
}
