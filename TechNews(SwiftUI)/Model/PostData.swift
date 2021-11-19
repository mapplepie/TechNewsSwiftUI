//
//  PostData.swift
//  TechNews(SwiftUI)
//
//  Created by Mai Uchida on 2021/11/19.
//

import Foundation


struct Results: Decodable{
    let hits : [Post]
}

struct Post: Decodable, Identifiable{
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title : String
    let url: String?
}
