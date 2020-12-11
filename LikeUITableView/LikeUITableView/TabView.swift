//
//  ContentView.swift
//  LikeUITableView
//
//  Created by joey.con on 2020/12/11.
//

import SwiftUI

struct BaseTabView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("ListView")
                        .tag(0)
                }
            VStackView()
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("VStackView")
                        .tag(1)
                }
        }
        .accentColor(.pink)
    }
}

struct BaseTabView_Previews: PreviewProvider {
    static var previews: some View {
        BaseTabView()
    }
}
