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
    @ObservedObject var viewModel = MemoListViewModel()
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItem,spacing: 16) {
                    ForEach(viewModel.memoList, id: \.id) { memo in
                        MemoView(memo: memo)
                            .padding(.trailing)
                            .padding(.leading)
                    }
                }
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
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: $showingWriteMemo, onDismiss: {
            viewModel.setMemoList()
        }) {
            WriteMemoView()
        }
    }
}

struct MemoListView_Previews: PreviewProvider {
    static var previews: some View {
        MemoListView()
    }
}
