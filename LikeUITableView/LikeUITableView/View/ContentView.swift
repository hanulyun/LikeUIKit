//
//  ContentView.swift
//  LikeUITableView
//
//  Created by joey.con on 2020/12/11.
//

import SwiftUI

struct ContentView: View {
//    @Binding var mock: MockModel
    let mock: MockModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Spacer(minLength: 8)
                Text("내 이름은 \(mock.name)\n태어난지 \(mock.age)년 됐어요.\n나는 \(mock.species)입니다.")
                    .padding([.leading, .trailing], 8)
                Spacer(minLength: 8)
            }
            Spacer()
        }
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let mock: MockModel = MockModel(id: 1, name: "밀리", age: 3, species: "고양이")
//        ContentView(mock: .constant(mock))
        ContentView(mock: mock)
    }
}
