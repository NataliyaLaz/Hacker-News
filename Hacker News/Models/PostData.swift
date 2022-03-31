//
//  PostData.swift
//  Hacker News
//
//  Created by Nataliya Lazouskaya on 20.03.22.
//

import Foundation
struct Results: Decodable {
    let hits: [Post]
}
struct Post: Decodable, Identifiable {
    let title: String
    let points: Int
    let url: String?
    let objectID: String
    var id: String {
        return objectID
    }
}
