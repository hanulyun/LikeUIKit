//
//  HeaderView.swift
//  LikeUITableView
//
//  Created by joey.con on 2020/12/11.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack() {
            Image(systemName: "list.bullet")
            Text("반려동물 리스트")
            Spacer()
        }
        .padding(.all, 8)
        .background(Color.yellow)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
