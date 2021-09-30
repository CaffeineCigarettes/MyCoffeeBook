//
//  DeteilMemoView.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/27.
//

import SwiftUI

struct DeteilMemoView: View {
    var memo: MemoModel
    init(memo: MemoModel) {
        self.memo = memo
    }
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    MemoView(memo: self.memo)
                        .padding(.top, 80)
                        .frame(width: geometry.size.width / 1.1)
                    HStack {
                        Text("memo")
                            .font(.title)
                            .padding(.leading)
                        Spacer()
                    }
                    .padding(.top, 10)
                    Text(memo.review)
                        .padding(.top, 10)
                        .frame(width: geometry.size.width / 1.1)
                }
            }
        }
    }
}

struct DeteilMemoView_Previews: PreviewProvider {
    static var previews: some View {
        let memo = MemoModel()
        DeteilMemoView(memo: memo)
    }
}
