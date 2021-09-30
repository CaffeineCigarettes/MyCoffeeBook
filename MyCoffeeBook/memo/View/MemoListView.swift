//
//  MemoListView.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.
//

import SwiftUI

struct MemoListView: View {
    private let gridItem = [GridItem(.flexible())]
    @State private var showingWriteMemo = false
    @State var searchTextEntered: String = ""
    let viewModel = MemoListViewModel()
    var body: some View {
        NavigationView {
            List(searchResults) { MemoModel in
                NavigationLink(destination: DeteilMemoView(memo: MemoModel)) {
                    MemoView(memo: MemoModel)
                        .padding(.trailing)
                        .padding(.leading)
                }
            }
            .searchable(text: $searchTextEntered)
            .navigationTitle("Coffee Book")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.showingWriteMemo = true
                    }) {
                        Text("+")
                            .font(.title)
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: $showingWriteMemo, onDismiss: {
            viewModel.setMemoList()
        }) {
            WriteMemoView()
        }
    }
    var searchResults: [MemoModel] {
            if searchTextEntered.isEmpty {
                return viewModel.memoList
            } else {
                return viewModel.memoList.filter { $0.name.contains(searchTextEntered) }
            }
        }
}

struct MemoListView_Previews: PreviewProvider {
    static var previews: some View {
        MemoListView()
    }
}
