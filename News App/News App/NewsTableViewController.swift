//
//  NewsTableViewController.swift
//  News App
//
//  Created by Adriaan van Schalkwyk on 2021/04/24.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class NewsTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func populateNews() {
        let key = APIKey.newsApiKey
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=2ce38f256a324f99a24af17fe993082a")
    }
}
