//
//  VStackView.swift
//  LikeUITableView
//
//  Created by joey.con on 2020/12/11.
//

import SwiftUI

struct VStackView: View {
    @State private var mocks: [MockModel] = MockModel.all()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyVStack(alignment: .leading, pinnedViews: [.sectionHeaders]) {
                    Section(header: HeaderView()) {
                        ForEach(mocks, id: \.id) { mock in
                            ContentView(mock: mock)
                                .contextMenu {
                                    Button(action: {
                                        if let index: Array<MockModel>.Index = mocks.firstIndex(of: mock) {
                                            mocks.remove(atOffsets: [index])
                                        }
                                    }, label: {
                                        HStack {
                                            Text("삭제")
                                            Spacer()
                                            Image(systemName: "trash")
                                        }
                                    })
                                }
                        }
                    }
                }
            }
            .navigationBarTitle("LazyVStack")
        }
    }
}

struct VStackView_Previews: PreviewProvider {
    static var previews: some View {
        VStackView()
    }
}
