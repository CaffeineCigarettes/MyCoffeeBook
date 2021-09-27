//
//  WriteMemoViewModel.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/25.
//

import Foundation

class WriteMemoViewModel: ObservableObject {
    @Published var coffeeName = ""
    @Published var saler = ""
    @Published var coffeeReview = ""
    func makeMemo(ast: Int, taste: Int,  roast: Int){
        //let memo: MemoModel = MemoModel(id: 0, name: self.coffeeName, saler: self.saler, astringency: ast, taste: taste, roast: roast, date: Date())
        let memo: MemoModel = MemoModel()
        memo.name = self.coffeeName
        memo.saler = self.saler
        memo.astringency = ast
        memo.taste = taste
        memo.roast = roast
        MemoListModel.shared.set(memo: memo)
    }
}
