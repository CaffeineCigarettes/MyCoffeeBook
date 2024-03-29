//
//  WriteMemoView.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.

import Foundation
import SwiftUI

struct WriteMemoView: View {
    @Environment(\.presentationMode) var presentationMode
    @State  var coffeeName = ""
    @State var coffeeReview = ""
    @StateObject var viewModel = WriteMemoViewModel()
    @StateObject var astViewModel: StarViewModel = StarViewModel()
    @StateObject var tasteViewModel: StarViewModel = StarViewModel()
    @StateObject var roastViewModel: StarViewModel = StarViewModel()
    @FocusState var isCoffeeNameFocused: Bool
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button(action: {
                    viewModel.makeMemo(ast: astViewModel.get(), taste: tasteViewModel.get(), roast: roastViewModel.get())
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("+")
                        .font(.title)
                        .padding(.trailing)
                        .padding(.top, 50)
                }
            }
            
            TextField("  Name", text: $viewModel.coffeeName)
                .font(.title)
                .padding(.leading)
                .focused($isCoffeeNameFocused)
                .keyboardType(.default)
            Divider()
                .background(Color("TextFrame"))
            TextField("  Store", text: $viewModel.saler)
                .font(.title)
                .padding(.leading)
                .focused($isCoffeeNameFocused)
            Divider()
                .background(Color("TextFrame"))
            Group{
                HStack{
                    Text("酸")
                    ForEach(0 ..< $astViewModel.stars.count, id: \.self) { starIndex in
                        Button(action: {
                            astViewModel.tap(starIndex: starIndex)
                        }) {
                            Text(astViewModel.stars[starIndex] ? "★": "☆")
                        }
                    }
                    .font(.title)
                    .foregroundColor(Color.yellow)
                    Text("苦")
                }
            }
            .padding(.bottom)
            Group{
                HStack{
                Text("軽")
                    ForEach(0 ..< $tasteViewModel.stars.count, id: \.self) { starIndex in
                    Button(action: {
                        tasteViewModel.tap(starIndex: starIndex)
                    }) {
                        Text(tasteViewModel.stars[starIndex] ? "★": "☆")
                    }
                }
                .font(.title)
                .foregroundColor(Color.yellow)
                Text("重")
                }
            }
            .padding(.bottom)
            Group{
                HStack{
                Text("浅")
                    ForEach(0 ..< $roastViewModel.stars.count, id: \.self) { starIndex in
                        Button(action: {
                            roastViewModel.tap(starIndex: starIndex)
                        }) {
                            Text(roastViewModel.stars[starIndex] ? "★": "☆")
                        }
                    }
                    .font(.title)
                    .foregroundColor(Color.yellow)
                    Text("深")
                }
                }
            .padding(.bottom)
            TextEditor(text: self.$viewModel.coffeeReview)
                .frame(height: 200)
                .border(Color("TextFrame"), width: 0.5)
                .padding()
                .foregroundColor(.gray)
        }
    }
}

extension UIApplication {
    func closeKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


struct WriteMemoView_Previews: PreviewProvider {
    static var previews: some View {
        WriteMemoView()
    }
}
