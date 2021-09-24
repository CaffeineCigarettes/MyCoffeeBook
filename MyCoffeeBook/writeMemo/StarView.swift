//
//  StarView.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.
//

import SwiftUI

struct StarView: View {
    var body: some View {
        VStack{
            HStack{
                Text("酸")
                Group{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                    Button(action: {}) {
                        Text("☆")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                }
                .font(.title)
                .foregroundColor(Color.yellow)
                Text("苦")
            }
            .padding(.bottom)
            HStack{
                Text("軽")
                Group{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                    Button(action: {}) {
                        Text("☆")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                }
                .font(.title)
                .foregroundColor(Color.yellow)
                Text("重")
            }
            .padding(.bottom)
            HStack{
                Text("浅")
                Group{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                    Button(action: {}) {
                        Text("☆")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("☆")
                    }
                }
                .font(.title)
                .foregroundColor(Color.yellow)
                Text("深")
            }
            .padding(.bottom)
        }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView()
    }
}
