//
//  DeteilMemoView.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/27.
//

import SwiftUI
import RealmSwift

struct DeteilMemoView: View {
    @ObservedObject var viewModel: DeteilMemoViewModel
    init(memo: MemoModel) {
        self.viewModel = DeteilMemoViewModel(memo: memo)
    }
    var body: some View {
        VStack {
            GeometryReader { geometry in
                VStack {
                    MemoView(memo: viewModel.memo)
                        .padding(.top, 80)
                        .frame(width: geometry.size.width / 1.1)
                    HStack {
                        Text("memo")
                            .font(.title)
                            .padding(.leading)
                        Spacer()
                        
                        Button(action: {
                            viewModel.updateReview()
                        }) {
                            Text("+")
                                .padding(.trailing, 20)
                                .font(.title)
                                .foregroundColor(buttonColor)
                        }
                    }
                    .padding(.top, 10)
                    TextEditor(text: $viewModel.review)
                        .padding(.top, 10)
                        .frame(width: geometry.size.width / 1.1)
                }
            }
        }
    }
    var buttonColor: Color {
        if viewModel.review != viewModel.oldReview {
            return Color.blue
        } else {
            return Color.gray
        }
    }
}

struct DeteilMemoView_Previews: PreviewProvider {
    static var previews: some View {
        let memo = MemoModel()
        DeteilMemoView(memo: memo)
    }
}
