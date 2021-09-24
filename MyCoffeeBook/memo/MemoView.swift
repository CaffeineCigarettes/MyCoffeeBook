//
//  MemoView.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.
//

import SwiftUI

struct MemoView: View {
    var body: some View {
        VStack{
            HStack{
                Text("コロンビア")
                    .font(.system(.title, design: .rounded))
                    .font(.title)
                Spacer()
            }
            HStack{
                Spacer()
                Text("KALDI")
                    .italic()
            }
            HStack{
                Text("酸")
                Text("☆☆☆☆☆")
                    .foregroundColor(Color.yellow)
                Text("苦")
                Spacer()
            }
            .padding(.leading)
            HStack{
                Text("軽")
                Text("☆☆☆☆☆")
                    .foregroundColor(Color.yellow)
                Text("重")
                Spacer()
            }
            .padding(.leading)
            HStack{
                Text("浅")
                Text("☆☆☆☆☆")
                    .foregroundColor(Color.yellow)
                Text("深")
                Spacer()
            }
            .padding(.leading)
            HStack{
                Spacer()
                Text("2021/1/1")
                    .underline()
            }
        }
    }
}

struct MemoView_Previews: PreviewProvider {
    static var previews: some View {
        MemoView()
    }
}
