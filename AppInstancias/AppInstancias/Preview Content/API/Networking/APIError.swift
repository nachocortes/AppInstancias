//
//  APIError.swift
//  AppInstancias
//
//  Created by 8fdam14 8fdam14 on 19/5/25.
//

import Foundation

enum APIError: Error {
    case invalidURL
    case network(Error)
    case invalidResponse
    case httpStatus(code: Int)
    case emptyData
    case decoding(Error)
    case encoding(Error)
}
