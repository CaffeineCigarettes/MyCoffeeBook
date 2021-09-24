//
//  MemoListViewModel.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.
//

import Foundation
class MemoListViewModel: ObservableObject {
    let memoListModel: MemoListModel = MemoListModel()
    @Published var memoList: [MemoModel]
    init(){
        self.memoList = memoListModel.get()
    }
    func setStar(StarInt: Int) -> String{
        var stars: [String] = ["☆","☆","☆","☆","☆"]
        for i in 0 ..< StarInt{
            stars[i] = "★"
        }
        return stars.joined()
    }
}
