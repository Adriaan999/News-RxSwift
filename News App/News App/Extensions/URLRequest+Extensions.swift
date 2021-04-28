//
//  URLRequest+Extensions.swift
//  News App
//
//  Created by Adriaan van Schalkwyk on 2021/04/28.
//

import Foundation
import RxSwift
import RxCocoa

struct Resource<T: Decodable> {
    let url: URL
}

extension URLRequest {
    static func load<T>(resource: Resource<T>) -> Observable<T?> {
        return Observable.from([resource.url])
            .flatMap { url -> Observable<Data> in
                let requset = URLRequest(url: url)
                return URLSession.shared.rx.data(request: requset)
            }.map { data -> T? in
                return try? JSONDecoder().decode(T.self, from: data)
            }.asObservable()
    }
}
