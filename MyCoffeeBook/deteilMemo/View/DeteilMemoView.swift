//
//  DeteilMemoView.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/27.
//

import SwiftUI

struct DeteilMemoView: View {
    @State var text: String
    @State var review: String
    var memo: MemoModel
    init(memo: MemoModel) {
        self.memo = memo
        self.text = memo.review
        self.review = memo.review
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
                        
                        Button(action: {
                            MemoListModel.shared.updateReview(id: memo.id, review: text)
                            review = text
                        }) {
                            Text("+")
                                .padding(.trailing, 20)
                                .font(.title)
                                .foregroundColor(buttonColor)
                        }
                    }
                    .padding(.top, 10)
                    TextEditor(text: $text)
                        .padding(.top, 10)
                        .frame(width: geometry.size.width / 1.1)
                }
            }
        }
    }
    var buttonColor: Color {
        if text != review {
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
