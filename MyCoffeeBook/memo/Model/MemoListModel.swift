//
//  MemoListModel.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.
//

import Foundation
class MemoListModel {
    private var memoList: [MemoModel] = MOCK_MEMO
    static let shared = MemoListModel()
    private init(){}
    func get() -> [MemoModel] {
        return memoList
    }
    func set(memo: MemoModel) {
        var addMemo = memo
        addMemo.id = memoList.count
        memoList.append(addMemo)
    }
    
}
