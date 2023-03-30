//
//  Post.swift
//  AnalysisDZ
//
//  Created by iAlesha уличный on 30.03.2023.
//

import UIKit

struct PostModel {
    var author: String
    var postImage: UIImage
    
    
    static func myPostModel() -> [PostModel] {
        return [
            PostModel(author: "vasya", postImage: UIImage(named: "IMG1")!),
            PostModel(author: "vasya", postImage: UIImage(named: "IMG2")!),
            PostModel(author: "vasya", postImage: UIImage(named: "IMG3")!),
            PostModel(author: "vasya", postImage: UIImage(named: "IMG4")!),
            PostModel(author: "vasya", postImage: UIImage(named: "IMG5")!),
        ]
    }
}

