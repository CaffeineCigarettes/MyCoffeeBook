//
//  WriteMemoView.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.
//

import SwiftUI

struct WriteMemoView: View {
    @State  var coffeeName = ""
    @State var coffeeReview = ""
    @FocusState var isCoffeeNameFocused: Bool
    var body: some View {
        VStack{
            TextField("  Name", text: $coffeeName)
                .font(.title)
                .padding(.leading)
                .focused($isCoffeeNameFocused)
                .toolbar{
                ToolbarItemGroup(placement: .keyboard) {
                    HStack {
                        Button("Clear textfield") {
                            self.coffeeName = ""
                        }
                        Spacer()
                        Button("Done") {
                            self.isCoffeeNameFocused = false
                        }
                    }
                }
            }
            Divider()
                .background(Color.green)
            TextField("  Store", text: $coffeeName)
                .font(.title)
                .padding(.leading)
                .focused($isCoffeeNameFocused)
                .toolbar{
                ToolbarItemGroup(placement: .keyboard) {
                    HStack {
                        Button("Clear textfield") {
                            self.coffeeName = ""
                        }
                        Spacer()
                        Button("Done") {
                            self.isCoffeeNameFocused = false
                        }
                    }
                }
            }
            Divider()
                .background(Color.green)
            StarView()
            TextEditor(text: self.$coffeeReview)
                .frame(width: 280, height: 200)
                .padding()
                .foregroundColor(.gray)
        }
    }
}

struct WriteMemoView_Previews: PreviewProvider {
    static var previews: some View {
        WriteMemoView()
    }
}
