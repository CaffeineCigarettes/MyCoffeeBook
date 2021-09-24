//
//  MemoViewModel.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/25.
//

import Foundation
class MemoViewModel: ObservableObject {
    @Published var memo: MemoModel
    init(memo: MemoModel){
        self.memo = memo
    }
    func setStar(_ StarInt: Int) -> String{
        var stars: [String] = ["☆","☆","☆","☆","☆"]
        for i in 0 ..< StarInt{
            stars[i] = "★"
        }
        return stars.joined()
    }
}
