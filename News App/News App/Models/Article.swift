//
//  Article.swift
//  News App
//
//  Created by Adriaan van Schalkwyk on 2021/04/28.
//

import Foundation

struct ArticlesList: Decodable {
    let articles: [Article]
}

extension ArticlesList {
    static var all: Resource<ArticlesList> = {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(APIKey.newsApiKey)")!
        return Resource(url: url)
    }()
}

struct Article: Decodable  {
    let title: String?
    let description: String?
}
