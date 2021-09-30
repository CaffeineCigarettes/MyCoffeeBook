//
//  MemoListView.swift
//  MyCoffeeBook
//
//  Created by nekuro on 2021/09/24.
//

import SwiftUI
import RealmSwift

struct MemoListView: View {
    private let gridItem = [GridItem(.flexible())]
    @State private var showingWriteMemo = false
    @State var searchTextEntered: String = ""
    @ObservedObject var viewModel = MemoListViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults) { MemoModel in
                    NavigationLink(destination: DeteilMemoView(memo: MemoModel).onDisappear(perform: {
                        viewModel.set()
                    })) {
                        MemoView(memo: MemoModel)
                    }
                }
                .onDelete(perform: viewModel.remove)
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
            viewModel.set()
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
