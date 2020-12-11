//
//  ListView.swift
//  LikeUITableView
//
//  Created by joey.con on 2020/12/11.
//

import SwiftUI

struct ListView: View {
    @State private var mocks: [MockModel] = MockModel.all()
    
    var body: some View {
        NavigationView {
            List {
                Section(header: HeaderView()
                            .listRowInsets(EdgeInsets())) {
                    ForEach(mocks, id: \.id) { mock in
                        ContentView(mock: mock)
                            .listRowInsets(EdgeInsets())
                    }
                    .onDelete(perform: { indexSet in
                        mocks.remove(atOffsets: indexSet)
                    })
                }
            }
            .navigationBarTitle("List")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
