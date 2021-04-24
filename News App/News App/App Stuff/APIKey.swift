//
//  APIKey.swift
//  News App
//
//  Created by Adriaan van Schalkwyk on 2021/04/24.
//

import Foundation

struct APIKey {
    
    static var newsApiKey: String {
      get {
        guard let filePath = Bundle.main.path(forResource: "Keys", ofType: "plist") else {
          fatalError("Couldn't find file 'Keys.plist'.")
        }
        let plist = NSDictionary(contentsOfFile: filePath)
        guard let value = plist?.object(forKey: "API_KEY") as? String else {
          fatalError("Couldn't find key 'API_KEY' in 'Keys.plist'.")
        }
        if (value.starts(with: "_")) {
          fatalError("Register for API KEY on https://newsapi.org/")
        }
        return value
      }
    }
}
