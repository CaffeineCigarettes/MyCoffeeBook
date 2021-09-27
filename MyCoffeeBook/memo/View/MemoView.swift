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
                    .foregroundColor(.black)
                Spacer()
            }
            HStack{
                Spacer()
                Text(viewModel.memo.saler)
                    .italic()
                    .foregroundColor(.black)
            }
            HStack{
                Text("酸")
                    .foregroundColor(.black)
                Text(viewModel.setStar(viewModel.memo.astringency))
                    .foregroundColor(Color.yellow)
                Text("苦")
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.leading)
            HStack{
                Text("軽")
                    .foregroundColor(.black)
                Text(viewModel.setStar(viewModel.memo.taste))
                    .foregroundColor(Color.yellow)
                Text("重")
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.leading)
            HStack{
                Text("浅")
                    .foregroundColor(.black)
                Text(viewModel.setStar(viewModel.memo.roast))
                    .foregroundColor(Color.yellow)
                Text("深")
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.leading)
            HStack{
                Spacer()
                Text(viewModel.memo.date, style: .date)
                    .underline()
                    .foregroundColor(.black)
            }
        }
    }
}

struct MemoView_Previews: PreviewProvider {
    static var previews: some View {
        let memo = MemoModel()
        MemoView(memo: memo)
    }
}
