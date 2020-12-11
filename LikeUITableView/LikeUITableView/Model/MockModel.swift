//
//  MockModel.swift
//  LikeUITableView
//
//  Created by joey.con on 2020/12/11.
//

import Foundation

struct MockModel: Equatable {
    let id: Int
    let name: String
    let age: Int
    let species: String
}

extension MockModel {
    static func all() -> [MockModel] {
        return [
            MockModel(id: 1, name: "치치", age: 2, species: "고양이"),
            MockModel(id: 2, name: "호랭이", age: 5, species: "고양이"),
            MockModel(id: 3, name: "꼬미", age: 1, species: "강아지"),
            MockModel(id: 4, name: "캬라", age: 5, species: "고양이"),
            MockModel(id: 5, name: "토미", age: 3, species: "고양이"),
            MockModel(id: 6, name: "뽈이", age: 1, species: "이구아나"),
            MockModel(id: 7, name: "토토", age: 1, species: "고슴도치"),
            MockModel(id: 8, name: "래기", age: 1, species: "고양이"),
            MockModel(id: 9, name: "무", age: 1, species: "고양이"),
            MockModel(id: 10, name: "통통이", age: 3, species: "강아지"),
            MockModel(id: 11, name: "케차비", age: 2, species: "개구리"),
            MockModel(id: 12, name: "타타", age: 2, species: "치타"),
            MockModel(id: 13, name: "고앵", age: 2, species: "호랑이")
        ]
    }
}
