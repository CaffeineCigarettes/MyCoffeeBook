//
//  MemoListViewModel.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.
//

import Foundation

class MemoListViewModel: ObservableObject {
    @Published var memoList: [MemoModel] = []
    init(){
        setMemoList()
    }
    func setStar(StarInt: Int) -> String{
        var stars: [String] = ["☆","☆","☆","☆","☆"]
        for i in 0 ..< StarInt{
            stars[i] = "★"
        }
        return stars.joined()
    }
    func setMemoList() {
        self.memoList = MemoListModel.shared.get()
    }
}
