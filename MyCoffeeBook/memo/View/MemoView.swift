//
//  MemoView.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.
//

import SwiftUI

struct MemoView: View {
    var viewModel: MemoViewModel
    init(memo: MemoModel){
        self.viewModel = MemoViewModel(memo: memo)
    }
    var body: some View {
        VStack{
            HStack{
                Text(viewModel.memo.name)
                    .font(.system(.title, design: .rounded))
                    .font(.title)
                Spacer()
            }
            HStack{
                Spacer()
                Text(viewModel.memo.saler)
                    .italic()
            }
            HStack{
                Text("酸")
                Text(viewModel.setStar(viewModel.memo.astringency))
                    .foregroundColor(Color.yellow)
                Text("苦")
                Spacer()
            }
            .padding(.leading)
            HStack{
                Text("軽")
                Text(viewModel.setStar(viewModel.memo.taste))
                    .foregroundColor(Color.yellow)
                Text("重")
                Spacer()
            }
            .padding(.leading)
            HStack{
                Text("浅")
                Text(viewModel.setStar(viewModel.memo.roast))
                    .foregroundColor(Color.yellow)
                Text("深")
                Spacer()
            }
            .padding(.leading)
            HStack{
                Spacer()
                Text(viewModel.memo.date, style: .date)
                    .underline()
            }
        }
    }
}

struct MemoView_Previews: PreviewProvider {
    static var previews: some View {
        let memo = MemoModel(id: 0, name: "コロンビア", saler: "KL", astringency: 0, taste: 1, roast: 2,date: Date())
        MemoView(memo: memo)
    }
}
